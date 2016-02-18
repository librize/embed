<app>
  <ul>
    <li each={ opts.books }>
      <a href={ url }>
        <img if={ hasCover } height={ parent.opts.height } alt={ title } src={ image }>
        <div if={ !hasCover } style="height: { parent.opts.height }px; width: { Math.floor(parent.opts.height / 1.3) }px">
          <span>{ title }</span>
        </div>
      </a>
    </li>
  </ul>

  <style scoped>
    :scope {
      display: block;
      font-family: sans-serif;
    }
    ul {
      border: 0;
      padding: 0;
      margin: 0;
    }
    ul > li {
      list-style: none;
      display: inline-block;
      margin: 5px;
      box-shadow: 0 0 5px rgba(0, 0, 0, 0.75);
      vertical-align: bottom;
    }
    ul > li > a {
      display: block;
      line-height: 0;
      text-decoration: none;
    }
    div {
      padding: 10px;
      background: #fff;
      color: #666;
      box-sizing: border-box;
      overflow: hidden;
    }
    span {
      display: block;
      font-size: 10px;
      font-weight: bold;
      line-height: 1.3em;
    }
  </style>
</app>
