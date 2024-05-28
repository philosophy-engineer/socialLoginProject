'use strict';
import dotenv from 'dotenv';
dotenv.config();

import swaggerUi from 'swagger-ui-express';
import swaggerJsdoc from 'swagger-jsdoc';

const setupSwagger = (app, serverPort) => {
  const options = {
    definition: {
      openapi: '3.0.0',
      info: {
        title: 'social-login-project API',
        version: '1.0.0',
        description: '이거 우리 플젝 api 모음임 ㅋ',
      },
      servers: [
        {
          url: 'http://localhost:3000/socialLoginProject/api/v1',
        },
      ],
    },
    apis: ['./lib/*.js'],
  };

  const specs = swaggerJsdoc(options);
  app.use('/socialLoginProject/api-docs', swaggerUi.serve, swaggerUi.setup(specs));
};

export { setupSwagger }