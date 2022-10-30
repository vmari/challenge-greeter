"use strict";

exports.handler = async (event) => {
  const name = event.queryStringParameters?.name || "World";

  return {
    statusCode: 200,
    body: `Hello ${name}`,
  };
};
