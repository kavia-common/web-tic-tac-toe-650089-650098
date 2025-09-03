#!/bin/bash
cd /tmp/kavia/workspace/code-generation/web-tic-tac-toe-650089-650098/tic_tac_toe_frontend
npx run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

