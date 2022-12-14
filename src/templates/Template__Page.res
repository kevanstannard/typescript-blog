@react.component
let make = (~page: Pages.page) => {
  let {title, body} = page
  <Template__Html title={title}>
    <p> <a href="index.html"> {React.string(`← Back to index`)} </a> </p>
    <h1> {React.string(title)} </h1>
    <div dangerouslySetInnerHTML={{"__html": body}} />
  </Template__Html>
}
