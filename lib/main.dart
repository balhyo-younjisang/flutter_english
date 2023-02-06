// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

var listData = [
  {
    "단어": "usher",
    "발음": "Λʃər",
    "주요뜻": "안내하다",
    "메모":
        "1)He ushered me in and then the interview started. \r그는 나를 안으로 안내하였고 면접이 시작되었다. \r\r"
  },
  {"단어": "moderate", "발음": "mάdərət", "주요뜻": "사회를 보다|온건한|적당한|완화하다|중도의"},
  {
    "단어": "conceit",
    "발음": "kənsíːt",
    "주요뜻": "자만|자부심",
    "메모": "1)His conceit makes me crazy. \r그의 자만심은 나를 미쳐버리게 해"
  },
  {
    "단어": "on maternity leave",
    "메모": "1)She is on maternity leave. 그녀는 지금 출산 휴가 중입니다.\r"
  },
  {"단어": "on maternity leave"},
  {
    "단어": "capable",
    "발음": "kéipəbl",
    "주요뜻": "할 수 있는|능력있는|가능한|가능성있는|유능한",
    "메모": "1)유사어 : competent qualified"
  },
  {
    "단어": "durable",
    "발음": "djúərəbl",
    "주요뜻": "내구력이 있는|튼튼한|오래 견디는",
    "메모":
        "1)durability : 명사 - 내구성 영속성\rduration 명사 - 지속 기간\rdurably . 부사 - 영속적으로 튼튼하게\r\r유사어 : enduring lasting persistent"
  },
  {"단어": "fabricate", "발음": "fǽbrikèit", "주요뜻": "위조하다|…을 제작하다|조립하다"},
  {
    "단어": "comprehensible",
    "발음": "kὰmprihénsəbl",
    "주요뜻": "이해할 수 있는|알기 쉬운|알 수 있는"
  },
  {
    "단어": "won't be able to",
    "메모":
        "1)I won't be able to go to the meeting in Tokyo. \r도쿄에서 열릴 회의에 참석할 수 없을 것 같습니다.\r \r"
  },
  {"단어": "prospective buyer"},
  {"단어": "accidently", "발음": "ǽksidentli", "주요뜻": "우연히"},
  {"단어": "merge with", "메모": "1)합병하다"},
  {"단어": "is reserved for"},
  {"단어": "brand-new"},
  {"단어": "at the rate of"},
  {"단어": "regular price", "메모": "1)= list price"},
  {"단어": "installment paln"},
  {"단어": "eco-friendly"},
  {"단어": "green growth"},
  {"단어": "low-carbon"},
  {"단어": "space travel"},
  {
    "단어": "get tired of",
    "메모": "1)I was getting tired of that business. 나는 그 일에 싫증이 나기 시작했어요.\r"
  },
  {"단어": "get a head start", "메모": "1)We can get a head start. 우리가 먼저 시작하려고요."},
  {"단어": "birthday gift"},
  {"단어": "in dress"},
  {
    "단어": "behind my back",
    "메모": "1)I caught him talking behind my back. \r그가 나를 헐뜯는 소릴 들었어요.\r\r"
  },
  {"단어": "at a fraction of cost"},
  {"단어": "It’s a good place to[for]~"},
  {
    "단어": "revenue",
    "발음": "révənjùː",
    "주요뜻": "매출|세입|수익|수입|순이익",
    "메모":
        "1)How much was the total revenue of our company? \r우리 회사의 총 매출이 얼마이었죠?"
  },
  {"단어": "sovereignty", "발음": "sάvərənti", "주요뜻": "주권|영유권|통치권"},
  {
    "단어": "except for",
    "주요뜻": "제외하고|…이 없으면|…이 없었더라면",
    "메모": "1)No admittance except for members. 회원 이외는 입장 금지입니다.\r"
  },
  {"단어": "prosperous", "발음": "prάspərəs", "주요뜻": "번영하는|성공한"},
  {"단어": "nominate", "발음": "nάmənèit", "주요뜻": "지명하다|후보에 오르다|추천하다|임명하다"},
  {"단어": "verify", "발음": "vérəfài", "주요뜻": "검증하다|확인하다|증명하다|밝히다|검토"},
  {"단어": "further", "발음": "fə́ːrðər", "주요뜻": "더|더 나아가|더 멀리|그 이상의|게다가"},
  {"단어": "authentic", "발음": "ɔːθéntik", "주요뜻": "진정한|진짜의|실제의|믿을 만한"},
  {"단어": "antibiotic", "발음": "ӕntibaiάtik -tai-", "주요뜻": "항생제|항균|항바이러스"},
  {"단어": "commemorate", "발음": "kəmémərèit", "주요뜻": "기념하다|행사|기리다|맞이하다|축하하다"},
  {"단어": "reduced parice", "메모": "1)= Sale price"},
  {"단어": "wholesale price"},
  {"단어": "Extension phone"},
  {"단어": "be laid off"},
  {"단어": "even-minded", "메모": "1)유사어 : calm even-tempered"},
  {"단어": "job dispute"},
  {"단어": "be faced with"},
  {"단어": "conspire to do"},
  {"단어": "persist", "발음": "pərsíst", "주요뜻": "계속 …하다|지속하다|고집하다|난무하다"},
  {
    "단어": "apprehensive",
    "발음": "ӕprihénsiv",
    "주요뜻": "불안한|걱정되는|신경쓰이는",
    "메모": "1)불안한"
  },
  {"단어": "carriage", "발음": "kǽridʒ", "주요뜻": "운송|마차|객차", "메모": "1)말이끄는 마차"},
  {"단어": "have to"},
  {
    "단어": "jump for joy",
    "주요뜻": "feel extreme happiness or elation",
    "메모": "1)기뻐 날뛰다 "
  },
  {
    "단어": "calm down",
    "주요뜻": "become quiet or calm especially after a state of agitation",
    "메모": "1)[[노여움·흥분을]] 가라앉히다; [[바다·기분·정정[政情] 등이]] 가라앉다 "
  },
  {
    "단어": "as a matter of fact",
    "주요뜻": "in reality or actuality",
    "메모": "1)실제[에 있어서] 사실[상] "
  },
  {
    "단어": "hook up with",
    "주요뜻": "take in marriage",
    "메모": "1)[구어] …와 관계하다; …와 친해지다; …와 성관계를 맺기 시작하다; …와 손잡다[제휴하다]; …와 경쟁하다 다투다 "
  },
  {
    "단어": "catch up with",
    "주요뜻": "catch up with and possibly overtake",
    "메모":
        "1)1. [[사람·차·나라 등을]] 따라잡다 \r2. [미] [행위 등이 예상대로] …에게 나쁜 결과를 가져오다 \r3. …을 체포[처벌]하다 "
  },
  {
    "단어": "healthcare",
    "주요뜻":
        "the preservation of mental and physical health by preventing or treating illness through services offered by the health profession",
    "메모": "1)1 건강 관리 의료   2 건강 관리의 의료의   "
  },
  {
    "단어": "preemptive",
    "주요뜻":
        "designed or having the power to deter or prevent an anticipated situation or occurrence",
    "메모": "1)1 선매의 선매권이 있는 선제의   2 우선권이 있는 우선적인   "
  },
  {
    "단어": "rearing",
    "주요뜻":
        "rearing on left hind leg with forelegs elevated and head usually in profile",
    "메모": "1)1. [아이의] 양육 \r2. [새·동물 등의] 사육 "
  },
  {
    "단어": "interpreting",
    "주요뜻": "an explanation of something that is not immediately obvious",
    "메모": "1)해석"
  },
  {
    "단어": "circumstances",
    "주요뜻": "your overall circumstances or condition in life",
    "메모":
        "1)주위의 사정 상황  \r명사.\r1. [pl.] [어떤 사건·사람·행동 등과 관련된] 주위의 사정 [부대] 상황 환경 \r2. [불가산] 부수적인 일[사항]; 자질구레한 점 지엽 말절 \r3. [pl.] [경제적·물질적인] 환경 처지 생활 상태 \r\r타동사.\r1. [보통 수동형으로] 어떤 상황에 두다 \r2. …에게 상세한 정보를 주다 "
  },
  {"단어": "over and done with"},
  {"단어": "be supposed to do", "주요뜻": "[관습·법·의무로] …하기로 되어 있다"},
  {"단어": "That’s all."},
  {"단어": "No problem.", "주요뜻": "문제없어 괜찮아."},
  {"단어": "be satisfied with", "주요뜻": "…에 만족하다"},
  {"단어": "a lot of"},
  {"단어": "at it"},
  {"단어": "stuck in traffic", "메모": "1)교통정체"},
  {"단어": "Long time no see.", "주요뜻": "오랜만입니다."},
  {"단어": "get in touch with", "주요뜻": "…와 연락하다 접촉하다"},
  {"단어": "have the upper hand"},
  {"단어": "go to the movies"},
  {"단어": "have a drink"},
  {"단어": "just around the corner"},
  {"단어": "Excuse me.", "주요뜻": "미안합니다 실례합니다"},
  {"단어": "Let me see.", "주요뜻": "글쎄 어디 보자 가만있자 저어."},
  {"단어": "the first time", "주요뜻": "처음 …했을 때에는"},
  {"단어": "behind schedule", "주요뜻": "정각[예정]보다 늦게"},
  {"단어": "stand a person up"},
  {"단어": "push the button", "주요뜻": "단추를 누르다; [사건의] 계기를 만들다"},
  {"단어": "catch a cold", "주요뜻": "감기 들다 감기 걸리다"},
  {"단어": "take a deep breath", "주요뜻": "한숨 돌리다 심호흡하다"},
  {"단어": "feel a person’s pulse"},
  {"단어": "because of …", "주요뜻": "[전치사로 써서] …때문에[owing to]"},
  {"단어": "have a crush on"},
  {"단어": "why not?", "주요뜻": "[상대방의 제안에 동의하여] 좋지 그러지"},
  {"단어": "rather than"},
  {"단어": "when it comes to …"},
  {"단어": "care about"},
  {"단어": "be concerned with"},
  {"단어": "send over"},
  {"단어": "as white as snow"},
  {
    "단어": "attribute",
    "발음": "ətríbjuːt",
    "주요뜻": "특성|…로 여기다|…에 따른|원인으로 여기다|때문이라고 생각한다"
  },
  {"단어": "regime", "발음": "reiʒíːm", "주요뜻": "정권|체제"},
  {"단어": "run over", "발음": "rΛnòuvər", "주요뜻": "…을 치다|지면을 초과한|초과하다"},
  {"단어": "drop in", "발음": "drάpìn", "주요뜻": "감소|떨어지다|하락|들르다|방문"},
  {"단어": "figure out", "주요뜻": "알아내다|알다|생각해 내다|이해하다|해결하다"},
  {
    "단어": "pessimistic",
    "발음": "pèsəmístik",
    "주요뜻": "비관적인|회의적인",
    "메모": "1)인생을 ∼하다 take a gloomy view of life\r앞날을 ∼하다"
  },
  {
    "단어": "share",
    "발음": "ʃεər",
    "주요뜻": "공유하다|나누다|점유하다|주식|주가",
    "메모":
        "1)Income per share rose 4% to \$2.00 last month. \r한 주당 수입이 지난달에 4% 올라서 \$2.00 가 되었다."
  },
  {"단어": "incomparable", "발음": "inkάmpərəbl", "주요뜻": "비교할 수 없는|비할 데 없는|무쌍의"},
  {"단어": "contrasting", "발음": "kəntrǽstiŋ", "주요뜻": "대조적인|대비적인"},
  {"단어": "sternly", "발음": "stə́ːrnli", "주요뜻": "엄격히|엄격하게|엄하게"},
  {
    "단어": "variety",
    "발음": "vəráiəti",
    "주요뜻": "다양|여러 가지|버라이어티|여러종류|갖가지",
    "메모": "1)require a variety of friends \r다양한 친구가 필요하다"
  },
  {
    "단어": "unthinkable",
    "발음": "ənθiˈŋkəbəl",
    "주요뜻": "생각할 수 없는|상상도 못 할|전혀 고려할 가치가 없는"
  },
  {"단어": "sustain", "발음": "səstéin", "주요뜻": "지속하다|부상을 입다|지탱하다|견디다|지지하다"},
  {"단어": "exceed", "발음": "iksíːd", "주요뜻": "넘어서다|초과하다|능가하다"},
  {"단어": "vendor", "발음": "véndər", "주요뜻": "판매자|노점|행상인"},
  {"단어": "startup", "발음": "stάːrtΛp", "주요뜻": "운전 개시|시동|조업 개시의"},
  {"단어": "renowned", "발음": "rináund", "주요뜻": "유명한|세계적인|저명한 |알려진 |명사"},
  {
    "단어": "implicate",
    "발음": "ímplikèit",
    "주요뜻": "연루시키다|관련되다|유죄|혐의|함축하다",
    "메모": "1)암시하다 의미하다\r"
  },
  {"단어": "compliance", "발음": "kəmpláiəns -ənsi", "주요뜻": "따르기|준수|추종"},
  {"단어": "accession", "발음": "ækséʃən əkséʃən", "주요뜻": "취득|계승|가맹"},
  {"단어": "get a handle on", "주요뜻": "…을 조종하다|관리하다|…을 이해하다"},
  {"단어": "retrieve", "발음": "ritríːv", "주요뜻": "회수|검색하다|되찾다|가져오다|빼내다"},
  {"단어": "repulse", "발음": "ripΛls", "주요뜻": "…을 격퇴하다|물리치다|…을 지겹게 하다"},
  {"단어": "unauthorized", "발음": "ənɔˈθəraiˌzd", "주요뜻": "허가받지 않은|권한이 없는|자기식의"},
  {"단어": "repairable", "발음": "ripέərəbl", "주요뜻": "수리가 가능한|수리할 수 있는"},
  {"단어": "litigation", "발음": "lìtəgéiʃən", "주요뜻": "소송|기소|고소"},
  {"단어": "monopolize", "발음": "mənάpəlàiz", "주요뜻": "독점하다"},
  {"단어": "marginal", "발음": "mάːrdʒinl", "주요뜻": "가장자리의|경계의|변두리의"},
  {"단어": "irresolute", "발음": "irézəlùːt", "주요뜻": "결단력이 없는|우유부단한|망설이는"},
  {"단어": "irrelevant", "발음": "iréləvənt", "주요뜻": "관계가 없는|무의미한|부적절한"},
  {
    "단어": "used to",
    "주요뜻": "in the habit",
    "메모":
        "1)과거의 습관적인 행동을 나타내어 ‘~하곤 했다 하는 것이 보통이었다.’ 의 표현으로 쓰입니다.\rEx&gt;It used to be believed that the sun moved round the earth. 옛날에는 태양이 지구를 돈다고 믿고 있었습니다.\r"
  },
  {
    "단어": "extended",
    "발음": "iksténdid",
    "주요뜻": "확장된|연장한|뻗은|늘어난|편",
    "메모": "1)유사어 : lengthy expansive prolonged"
  },
  {
    "단어": "exceptional",
    "발음": "iksépʃənl",
    "주요뜻": "예외적인|뛰어난|특별한",
    "메모":
        "1)exceptionally : 부사 - 예외적으로 이례적으로\rexception : 명사 - 예외\rexcept : 전치사 - ～을 제외하고. ～이 없이\r\r유사어 : extraordinary outstanding remarkable unusual"
  },
  {
    "단어": "enormous",
    "발음": "inɔ́ːrməs",
    "주요뜻": "엄청난|거대한|큰|막대한|어마어마하다",
    "메모": "1)유사어 : colossal gigantic immense"
  },
  {
    "단어": "enjoyable",
    "발음": "indʒɔ́iəbl",
    "주요뜻": "즐거운|재미있는|즐길 수 있는",
    "메모": "1)유사어 : pleasant pleasing pleasurable"
  },
  {
    "단어": "eligible",
    "발음": "élidʒəbl",
    "주요뜻": "자격이 있는|권한이 있는|가능한",
    "메모": "1)유사어 : suitable appropriate qualified"
  },
  {
    "단어": "efficient",
    "발음": "ifíʃənt",
    "주요뜻": "효율적인|효과적|능률적인|유능한",
    "메모": "1)유사어 : effective effectual competent able capablematerial potent"
  },
  {
    "단어": "easy",
    "발음": "íːzi",
    "주요뜻": "쉬운|좋은|편하게|용이한|수월하게",
    "메모": "1)유사어 : effortless simple smooth untroublesome"
  },
  {
    "단어": "eager",
    "발음": "íːgər",
    "주요뜻": "싶다|열망|열심인",
    "메모": "1)유사어 : ardent avid solicitous"
  },
  {
    "단어": "dramatic",
    "발음": "drəmǽtik",
    "주요뜻": "극적인|급격한|인상적인|드라마틱한|연극의",
    "메모": "1)유사어 : theatrical vivid spectacular striking"
  },
  {"단어": "diverse", "발음": "daivə́ːrs", "주요뜻": "다양한|다른|광범위한|여러 가지의|각계 각층의"},
  {
    "단어": "distant",
    "발음": "dístənt",
    "주요뜻": "먼|원격의|거리를 두는|냉담한|서먹서먹한",
    "메모": "1)유사어 : remote faraway far-off"
  },
  {
    "단어": "discard",
    "발음": "diskάːrd",
    "주요뜻": "버리다|폐기|포기|처리|가치없는",
    "메모": "1)유사어 : abandoned discharged rejected cast-off thrownaway"
  },
  {
    "단어": "devoted",
    "발음": "divóutid",
    "주요뜻": "헌신적인|바쳐진|전념하는|… 을 다룬|사랑하는",
    "메모": "1)유사어 : affectionate dedicated"
  },
  {
    "단어": "designated",
    "발음": "dézignèitid",
    "주요뜻": "지정된|정해진|지명된|등재|할당된",
    "메모": "1)유사어 : allocated appointed selected"
  },
  {
    "단어": "deep",
    "발음": "diːp",
    "주요뜻": "깊은|심|매우|딥|많다",
    "메모": "1)유사어 : far-down profound bottomless"
  },
  {
    "단어": "dedicated",
    "발음": "dédikèitid",
    "주요뜻": "전용의|헌신적인|몰두하고 있는|열렬한|특정한 목적으로 사용되는",
    "메모": "1)유사어 : devoted hallowed sacred"
  },
  {"단어": "cost-effective"},
  {
    "단어": "considerable",
    "발음": "kənsídərəbl",
    "주요뜻": "상당한|꽤",
    "메모": "1)유사어 : extensive large-scale monumental significant"
  },
  {
    "단어": "confidential",
    "발음": "kὰnfədénʃəl",
    "주요뜻": "비밀의|기밀의|흉금을 터놓는|감추는",
    "메모": "1)유사어:secret trustworthy"
  },
  {
    "단어": "conceal",
    "발음": "kənsíːl",
    "주요뜻": "숨기다|감추다",
    "메모": "1)유사어 : hidden covered out-of-sight disguised"
  },
  {
    "단어": "comprehensive",
    "발음": "kὰmprihénsiv",
    "주요뜻": "종합적인|포괄적인|광범위한",
    "메모": "1)유사어 : all-round broad inclusive extended"
  },
  {
    "단어": "competitive",
    "발음": "kəmpétətiv",
    "주요뜻": "경쟁의|경쟁적인|경쟁력을 지닌|경쟁심이 강한",
    "메모":
        "1)Competent ' 형용사 -유능한 자격 있는[사람]\rcompete : 동사 - 경쟁하다. 필적하다\rcompetition . 명사 - 경쟁 시합\rcompetence ' 명사 - 능력 자격\rcompetitor ' 명사 - 경쟁자"
  },
  {
    "단어": "cautious",
    "발음": "kɔ́ːʃəs",
    "주요뜻": "신중한|조심스러운|주의를 기울이는",
    "메모": "1)유사어 : careful prudent wary"
  },
  {
    "단어": "available",
    "발음": "əvéiləbl",
    "주요뜻": "이용할 수 있는|이용 가능한|시간이 있는|유효한|유용한",
    "메모": "1)유사어 : accessible attainable usable"
  },
  {
    "단어": "approachable",
    "발음": "əpróuʧəbl",
    "주요뜻": "가까이하기 쉬운|사귀기 쉬운|가까이하기",
    "메모": "1)유사어 : accessible reachable friendly"
  },
  {
    "단어": "aim",
    "발음": "eim",
    "주요뜻": "목표|목적|겨냥하다|노리다|조준하다",
    "메모": "1)유사어 : directed pointed targeted intended estimated\r"
  },
  {
    "단어": "attempted",
    "발음": "ətémptid",
    "주요뜻": "미수의|시도한|기도한",
    "메모": "1)유사어 : failed misfired"
  },
  {
    "단어": "attached",
    "발음": "ətǽʧt",
    "주요뜻": "덧붙여진|첨부된|달라붙은",
    "메모": "1)유사어 : affixed affiliated connected"
  },
  {
    "단어": "adequate",
    "발음": "ǽdikwət",
    "주요뜻": "적당한|충분한|부족하지않은",
    "메모": "1)유사어 : acceptable sufficient"
  },
  {
    "단어": "advanced",
    "발음": "ædvǽnst",
    "주요뜻": "앞선|진보한|고등의|선진의|진행한",
    "메모": "1)유사어 : developed progressive"
  },
  {
    "단어": "additional",
    "발음": "ədíʃənl",
    "주요뜻": "추가의|더|다른|또|부가적인",
    "메모":
        "1)added : 형용사 - 추가된. 첨가된 [동작]\raddition : 명사 - 추가 첨가 부속\radd : 동사 - 추가하다. 첨가하다\radditionally : 부사 - 부가적으로\r\r유사어 : another else more farther further"
  },
  {
    "단어": "adaptable",
    "발음": "ədǽptəbl",
    "주요뜻": "융통성 있는|순응할 수 있는|적응성 있는",
    "메모": "1)유사어 : adjustable elastic flexible pliant"
  },
  {
    "단어": "accord",
    "발음": "əkɔ́ːrd",
    "주요뜻": "협정|합의|허용하다|의정서",
    "메모": "1)유사어 : agreed granted awarded"
  },
  {
    "단어": "accepted",
    "발음": "ækséptid əkséptid",
    "주요뜻": "받은|받아들여지고|합격한|수용된|수락한",
    "메모": "1)유사어 : consented admitted assumed received"
  },
  {
    "단어": "able",
    "발음": "éibl",
    "주요뜻": "…할 수 있는|자격 있는|유능한|수완 있는",
    "메모": "1)유사어 : capable competent qualified"
  },
  {
    "단어": "abbreviated",
    "발음": "əbríːvièitid",
    "주요뜻": "단축된|약자의|간결하게 한",
    "메모": "1)유사어 : brief shortened"
  },
  {
    "단어": "violation",
    "발음": "vàiəléiʃən",
    "주요뜻": "위반|침해|위법|유린|위배",
    "메모": "1)유사어 : offense breach transgression"
  },
  {
    "단어": "trouble",
    "발음": "trΛbl",
    "주요뜻": "문제|곤란|어려움|고통|말썽",
    "메모": "1)유사어 : problem worry distress difficulty"
  },
  {
    "단어": "track",
    "발음": "træk",
    "주요뜻": "추적하다|궤도|트랙|기록|경로",
    "메모": "1)유사어 : path course trace path trail pursuit chase"
  },
  {
    "단어": "tournament",
    "발음": "túərnəmənt",
    "주요뜻": "대회|토너먼트|경기|시합",
    "메모": "1)유사어 : contest competition"
  },
  {
    "단어": "toleration",
    "발음": "tὰləréiʃən",
    "주요뜻": "관용|신앙의 자유|인내",
    "메모": "1)유사어 : tolerance allowance acceptance"
  },
  {
    "단어": "term",
    "발음": "təːrm",
    "주요뜻": "용어|임기|말하다|계약조건|기간",
    "메모": "1)유사어 : period termination relationship condition\r"
  },
  {
    "단어": "temptation",
    "발음": "temptéiʃən",
    "주요뜻": "유혹",
    "메모": "1)유사어 : enticement inducement seduction"
  },
  {
    "단어": "technology",
    "발음": "teknάlədʒi",
    "주요뜻": "기술|과학 기술|테크놀러지|공학",
    "메모": "1)유사어 : engineering engineering science"
  },
  {
    "단어": "step",
    "발음": "step",
    "주요뜻": "단계|조치|걸음|계단|스텝",
    "메모": "1)유사어:procedure action measure move"
  },
  {
    "단어": "statement",
    "발음": "stéitmənt",
    "주요뜻": "발표|말함|진술|대차표",
    "메모": "1)유사어 : declaration account bill invoice financial slater"
  },
  {
    "단어": "stability",
    "발음": "stəbíləti",
    "주요뜻": "안정|안전",
    "메모": "1)유사어 : constancy reliability dependability"
  },
  {
    "단어": "spending",
    "발음": "spéndiŋ",
    "주요뜻": "지출|소비|쓰는|보내는|~액",
    "메모": "1)유사어 : expenditure outlay"
  },
  {
    "단어": "spectator",
    "발음": "spékteitər",
    "주요뜻": "관중|관객|구경꾼|방관자",
    "메모": "1)유사어 : audience beholder bystander looter-on observer"
  },
  {
    "단어": "specification",
    "발음": "spèsəfikéiʃən",
    "주요뜻": "명세|사양|규격|설명서|기준",
    "메모": "1)유사어 : stipulation  clarification"
  },
  {
    "단어": "series",
    "발음": "síəriːz",
    "주요뜻": "시리즈|일련|연작|계속해서|경기",
    "메모": "1)유사어 : succession progression sequence chain sequel\r"
  },
  {
    "단어": "separation",
    "발음": "sèpəréiʃən",
    "주요뜻": "분리|이별|떨어짐|구분|이탈",
    "메모": "1)유사어 : secession independence detachment divisiondivorce interval"
  },
  {
    "단어": "schedule",
    "발음": "skédʒuːl",
    "주요뜻": "일정|스케줄|계획|예정|시간표",
    "메모": "1)유사어 : plan agenda calendar timetable"
  },
  {
    "단어": "saying",
    "발음": "séiiŋ",
    "주요뜻": "…라는 말이 있다|속담|발언",
    "메모": "1)유사어 : declaration speech maxim proverb"
  },
  {
    "단어": "reward",
    "발음": "riwɔ́ːrd",
    "주요뜻": "보상|상|상을 주다|상금|보답",
    "메모": "1)유사어 : prize compensation pay[off]"
  },
  {
    "단어": "revision",
    "발음": "rivíʒən",
    "주요뜻": "개정|수정|교정|개편",
    "메모": "1)유사어 : amendment alteration"
  },
  {
    "단어": "retirement",
    "발음": "ritáiərmənt",
    "주요뜻": "은퇴|퇴직|퇴임",
    "메모": "1)유사어 : departure retreat"
  },
  {
    "단어": "responsibility",
    "발음": "rispὰnsəbíləti",
    "주요뜻": "책임|의무|할 일|책무|임무",
    "메모":
        "1)유사어: duty obligation reliability\r\rresponse . 명사 - 응답 반응[행위]\rresponsiveness : 명사 - 민감성[개념]\rresponsible : 형용사 - 책임이 있는 초래하는"
  },
  {
    "단어": "reserve",
    "발음": "rizə́ːrv",
    "주요뜻": "준비의|예비|매장량|예약하다|보유하다",
    "메모": "1)유사어: resonation store holdings"
  },
  {
    "단어": "remittance",
    "발음": "rimítəns",
    "주요뜻": "송금|납부",
    "메모": "1)유사어 : repeat reiteration recital"
  },
  {
    "단어": "replacement",
    "발음": "ripléismənt",
    "주요뜻": "대체|교체|대신하는 사람|다른",
    "메모": "1)유사어 : alternate substitute successor substitution"
  },
  {
    "단어": "regularity",
    "발음": "règjulǽrəti",
    "주요뜻": "질서|규칙적임|균정",
    "메모": "1)유사어 : habitualness routineness constancy"
  },
  {
    "단어": "reference",
    "발음": "réfərəns",
    "주요뜻": "참고|기준|표준|자료|지칭",
    "메모": "1)유사어 : citation mention quotation"
  },
  {
    "단어": "record",
    "발음": "rikɔ́ːrd",
    "주요뜻": "기록하다|기록적인|녹음하다|최고의|음반",
    "메모": "1)유사어 : data information figure"
  },
  {
    "단어": "reason",
    "발음": "ríːzn",
    "주요뜻": "이유|원인|이성|요인|근거",
    "메모": "1)유사어 : account excuse justification sense"
  },
  {
    "단어": "rebate",
    "발음": "ríːbeit",
    "주요뜻": "리베이트|할인|환불|보조금|환급",
    "메모": "1)유사어 : refund discount"
  },
  {
    "단어": "pursuit",
    "발음": "pərsúːt",
    "주요뜻": "추구|추격|쫓음",
    "메모": "1)유사어 : chase following hunt quess search"
  },
  {
    "단어": "abundance",
    "발음": "əbΛndəns",
    "주요뜻": "풍부|대량|양|다양한",
    "메모": "1)유사어 : profusion plenty extravagance"
  },
  {
    "단어": "rate",
    "발음": "reit",
    "주요뜻": "속도|비율|평가되다|요금|가격",
    "메모": "1)유사어 : charge cost price proportion ratio"
  },
  {
    "단어": "purpose",
    "발음": "pə́ːrpəs",
    "주요뜻": "목적|목표|의도|용도|명분",
    "메모": "1)유사어 : aim object design intention"
  },
  {
    "단어": "proposal",
    "발음": "prəpóuzəl",
    "주요뜻": "제안|계획|제의|안|청혼",
    "메모": "1)유사어 : plan suggestion offer"
  },
  {
    "단어": "protection",
    "발음": "prətékʃən",
    "주요뜻": "보호|방지|경호|비호",
    "메모": "1)유사어 : defense coverage shield"
  },
  {
    "단어": "program",
    "발음": "próugræm",
    "주요뜻": "프로그램|계획|과정|프로",
    "메모": "1)유사어 : agenda plan schedule timetable"
  },
  {
    "단어": "proficiency",
    "발음": "prəfíʃənsi",
    "주요뜻": "실력 향상|능숙|유창",
    "메모": "1)유사어 : competence ability mastery"
  },
  {
    "단어": "profession",
    "발음": "prəféʃən",
    "주요뜻": "직업|직종|직위",
    "메모": "1)유사어 : career vocation occupation"
  },
  {
    "단어": "productivity",
    "발음": "pròudʌktívəti",
    "주요뜻": "생산성|생산력|생산 능력",
    "메모": "1)유사어 : fertility fruitfulness productiveness"
  },
  {
    "단어": "procession",
    "발음": "prəséʃən",
    "주요뜻": "행렬|행진|진행",
    "메모": "1)유사어 : progression sequence succession"
  },
  {
    "단어": "prize",
    "발음": "praiz",
    "주요뜻": "상|상금|경품|상품",
    "메모": "1)유사어 : award reward trophy"
  },
  {
    "단어": "procedure",
    "발음": "prəsíːdʒər",
    "주요뜻": "절차|과정|방법|처리|순서",
    "메모": "1)유사어 : operation routine step function"
  },
  {
    "단어": "position",
    "발음": "pəzíʃən",
    "주요뜻": "위치|입장|지위|자리|자세",
    "메모": "1)유사어 : place view stance attitude rank"
  },
  {
    "단어": "popularity",
    "발음": "pὰpjulǽrəti",
    "주요뜻": "인기|인지도",
    "메모": "1)유사어 : celebrity fame renown reputation"
  },
  {
    "단어": "policy",
    "발음": "pάləsi",
    "주요뜻": "정책|제도|방침|규정|방책",
    "메모": "1)유사어 : course principle insurance"
  },
  {
    "단어": "permit",
    "발음": "pərmít",
    "주요뜻": "허용하다|허가하다|허락하다|용납하다",
    "메모": "1)유사어 : license permission authorization consent"
  },
  {
    "단어": "passage",
    "발음": "pǽsidʒ",
    "주요뜻": "통과|통로|구절|경과|통행",
    "메모": "1)유사어 : way course path road route"
  },
  {
    "단어": "outcome",
    "발음": "auˈtkəˌm",
    "주요뜻": "결과|성과|소산",
    "메모": "1)유사어 : aftermath consequence result"
  },
  {
    "단어": "order",
    "발음": "ɔ́ːrdər",
    "주요뜻": "명령하다|질서|주문하다|순서|제도",
    "메모": "1)유사어 : command instructions request demand"
  },
  {
    "단어": "opposition",
    "발음": "ὰpəzíʃən",
    "주요뜻": "반대|야당|반발|상대방",
    "메모": "1)유사어 : opponent contradiction confrontation resistance"
  },
  {
    "단어": "opportunity",
    "발음": "ὰpərtjúːnəti",
    "주요뜻": "기회|찬스",
    "메모": "1)유사어 : chance break"
  },
  {
    "단어": "offer",
    "발음": "ɔ́ːfər",
    "주요뜻": "제공하다|…하려고 하다|제안하다|제시하다|지원하다",
    "메모": "1)유사어: bid tender proposal attempt"
  },
  {
    "단어": "occupation",
    "발음": "ὰkjupéiʃən",
    "주요뜻": "직업|점령|일제 식민통치",
    "메모": "1)유사어 : job profession vocation"
  },
  {
    "단어": "occasion",
    "발음": "əkéiʒən",
    "주요뜻": "계기|행사|때|경우|기회",
    "메모": "1)유사어 : incident affair juncture"
  },
  {
    "단어": "network",
    "발음": "nétwə̀ːrk",
    "주요뜻": "네트워크|통신망|망|관계|연계",
    "메모": "1)유사어 : web net"
  },
  {
    "단어": "need",
    "발음": "niːd",
    "주요뜻": "필요|해야 한다|된다|요구|수요",
    "메모": "1)유사어 : lack want necessity obligation"
  },
  {
    "단어": "motivation",
    "발음": "mòutəvéiʃən",
    "주요뜻": "동기 부여|욕구|자극",
    "메모": "1)유사어 ; incentive spur"
  },
  {
    "단어": "Mentor",
    "발음": "méntɔːr",
    "주요뜻": "스승|조언자|멘토르",
    "메모": "1)유사어 : advisor consultant counselor master"
  },
  {
    "단어": "mandate",
    "발음": "mǽndeit",
    "주요뜻": "의무|지도력|임무|명령|권한",
    "메모": "1)유사어 : authorization commission territory dominion"
  },
  {
    "단어": "limit",
    "발음": "límit",
    "주요뜻": "제한|한계|한정하다|한도|범위",
    "메모": "1)유사어 : bounds boundary constraint limitation restriction"
  },
  {
    "단어": "issue",
    "발음": "íʃuː",
    "주요뜻": "문제|쟁점|이슈|사안|발행하다",
    "메모": "1)유사어 : topic subject matter publication"
  },
  {
    "단어": "invention",
    "발음": "invénʃən",
    "주요뜻": "발명|발명품|고안|창작",
    "메모": "1)유사어 : creation conception design innovation"
  },
  {
    "단어": "intention",
    "발음": "inténʃən",
    "주요뜻": "의도|의사|의향|의지|취지",
    "메모": "1)유사어: intent purpose goal end aim object design"
  },
  {
    "단어": "infusion",
    "발음": "infjúːʒən",
    "주요뜻": "주입|고취|주입물",
    "메모": "1)유사어 ; injection instillation"
  },
  {
    "단어": "influence",
    "발음": "ínfluəns",
    "주요뜻": "영향|요인|변화|결과|작용",
    "메모": "1)유사어 : supremacy mastery reputation prestige"
  },
  {
    "단어": "indication",
    "발음": "ìndikéiʃən",
    "주요뜻": "표시|가리키는|징후",
    "메모": "1)유사어 : hint suggestion signal sign"
  },
  {
    "단어": "improvement",
    "발음": "imprúːvmənt",
    "주요뜻": "개선|향상|발전|개량|증진",
    "메모": "1)유사어 : advance development"
  },
  {
    "단어": "imitation",
    "발음": "ìmətéiʃən",
    "주요뜻": "모방|모조품|모의|장식",
    "메모": "1)유사어 : copy fake counterfeit"
  },
  {
    "단어": "concentration",
    "발음": "kὰnsəntréiʃən",
    "주요뜻": "농축|집중|수용소",
    "메모": "1)유사어 : attention focus density"
  },
  {
    "단어": "hurt",
    "발음": "həːrt",
    "주요뜻": "다치다|해치다|상처|타격|아프다",
    "메모": "1)유사어: injury harm distress sufferingdamage"
  },
  {
    "단어": "complication",
    "발음": "kὰmpləkéiʃən",
    "주요뜻": "분규|복잡|합병증",
    "메모": "1)유사어: complexity intricacy"
  },
  {
    "단어": "completion",
    "발음": "kəmplíːʃən",
    "주요뜻": "완성|완공|마치다|체결|수료",
    "메모": "1)유사어 : closing perfection accomplishment"
  },
  {
    "단어": "competition",
    "발음": "kὰmpətíʃən",
    "주요뜻": "경쟁|대회|경기|경합|시합",
    "메모": "1)유사어 : contest"
  },
  {
    "단어": "chance",
    "발음": "ʧæns",
    "주요뜻": "기회|가능성|위험|우연|가망",
    "메모": "1)유사어 : Opportunity Possibility"
  },
  {
    "단어": "claim",
    "발음": "kleim",
    "주요뜻": "주장하다|말하다|요구하다|차지하다|제기하다",
    "메모": "1)유사어: pretense assertion"
  },
  {
    "단어": "challenge",
    "발음": "ʧǽlindʒ",
    "주요뜻": "도전|문제|난제|이의를 제기하다|자극하다",
    "메모": "1)유사어: defiance task objection"
  },
  {
    "단어": "category",
    "발음": "kǽtəgɔ̀ːri",
    "주요뜻": "범주|부문|분류|카테고리|항목",
    "메모":
        "1)유사어: class family\r Nutritionists categorize food into five basic groups. \r영양학자들은 식품을 5가지 기본 단위로 구분한다.\r"
  },
  {
    "단어": "celebrity",
    "발음": "səlébrəti",
    "주요뜻": "연예인|유명인|배우|스타|명성",
    "메모": "1)유사어: fame renown hero"
  },
  {
    "단어": "caution",
    "발음": "kɔ́ːʃən",
    "주요뜻": "주의|경고|신중함|조심|경계",
    "메모": "1)유사어 : precaution care"
  },
  {
    "단어": "cause",
    "발음": "kɔːz",
    "주요뜻": "원인|초래하다|일으키다|발생하다|명분",
    "메모": "1)유사어: reason grounds"
  },
  {
    "단어": "capacity",
    "발음": "kəpǽsəti",
    "주요뜻": "능력|용량|가능성|기능|자격",
    "메모": "1)유사어: ability capability content"
  },
  {
    "단어": "candidate",
    "발음": "kǽndidèit -dət",
    "주요뜻": "후보자|지원자|수험생",
    "메모": "1)유사어: applicant nominee hopeful seeker"
  },
  {
    "단어": "serve",
    "발음": "səːrv",
    "주요뜻": "복무하다|제공하다|봉사하다|근무하다|복역하다",
    "메모":
        "1)service 명사 - 봉사 공헌 복무\rserviceable 형용사-튼튼한 실용적인 쓸모 있는\rserving 명사-접대하기 음식 한그릇"
  },
  {
    "단어": "facilitate",
    "발음": "fəsílətèit",
    "주요뜻": "위하다|촉진하다|활성화|용이|돕다",
    "메모":
        "1)facility 명사 - 설비 시설 재능\rfacilitation 명사 - 용이하게 함 간소화 조성\rfacilitator 명사 - 용이하게 하는"
  },
  {
    "단어": "sufficiently",
    "발음": "səfíʃəntli",
    "주요뜻": "충분히",
    "메모": "1)sufficient : 형용사 - 충분한\rsuffice : 동사 - 충분하다. 족하다"
  },
  {
    "단어": "temporarily",
    "발음": "tèmpərérəli",
    "주요뜻": "일시적으로|임시로|잠정적으로|가칭",
    "메모":
        "1)temporary : 형용사 -일시적인 한시적인\rtemporal : 형용사 - 시간의 세속적인\rtemporariness ' 명사 - 일시적임"
  },
  {
    "단어": "necessarily",
    "발음": "nèsəsérəli",
    "주요뜻": "반드시 |꼭|필요|필연적으로",
    "메모": "1)necessary : 형용사 - 필요한\rnecessitate 동사 - 필요로 하다\rnecessity 명사 - 필요성"
  },
  {
    "단어": "personally",
    "발음": "pə́ːrsənəli",
    "주요뜻": "개인적으로|직접|나로서는|스스로",
    "메모":
        "1)Personal : 형용사 - 개인의 사사로운\rPerson 명사 - 사람 개성 풍채\rpersonality 명사 - 성격 인품\r\r몸소 개인적으로 직접 자기로서[는]"
  },
  {
    "단어": "presumably",
    "발음": "prizúːməbli",
    "주요뜻": "아마|추정하건대|짐작하건대",
    "메모":
        "1)presuming : 형용사 - 뻔뻔스러운 주제넘은\rpresumptuous : 형용사 - 뻔뻔스러운 주제넘은\rpresumptive : 형용사 - 추정상의 추정에 근거한\rpresume : 동사 - 추정하다. 넘겨짚다"
  },
  {
    "단어": "occasionally",
    "발음": "əkéiʒənəli",
    "주요뜻": "가끔|때때로|종종|이따금|자주",
    "메모": "1)occasional : 형용사 - 이따금의 임시의 우발적인\roccasion : 명사 -경우기회근거"
  },
  {
    "단어": "prompt",
    "발음": "prɑːmpt",
    "주요뜻": "신속한|촉발하다|촉구하다",
    "메모": "1)prompt 형용사 - 신속한 즉각적인 .\r          동사 - 일으키다. 유발하다. 재촉하다"
  },
  {
    "단어": "nearly",
    "발음": "níərli",
    "주요뜻": "거의|가까이",
    "메모": "1)realness : 명사 - 인접 접근 가까움\rnear : 형용사 - 인접한 가까운"
  },
  {
    "단어": "hesitant",
    "발음": "hézətənt",
    "주요뜻": "망설이는|주저하는|우유 부단한",
    "메모":
        "1)hesitantly : 부사 - 우유 부단하게. 싫어하여\rhesitating : 형용사 - 망설이는 주저하는\rhesitate : 동사 - 망설이다. 주저하다\rhesitation : 명사 - 망설임 . 주저"
  },
  {
    "단어": "heavily",
    "발음": "hévili",
    "주요뜻": "크게|과하게|상당히|두껍게|무겁게",
    "메모": "1)heavy : 형용사 - 무거운. 육중한\rheaviness : 명사 - 무거움 무게 압박감"
  },
  {
    "단어": "frequently",
    "발음": "fríːkwəntli",
    "주요뜻": "자주|종종|빈번히|잦은|…하는 경우가 많다",
    "메모": "1)frequent : 형용사 - 빈번한 자주 일어나는\rfrequency : 명사 - 빈도. 주파수"
  },
  {
    "단어": "favorably",
    "발음": "féivərəbli",
    "주요뜻": "호의적으로|좋게|순조롭게|유리하게",
    "메모":
        "1)favor : 명사 - 친절. 호의\r         동사 - 친절을 베풀다 편애하다\rfavorite 명사 - 마음에 드는 사람. 좋아하는 물건\r         형용사 - 마음에 드는"
  },
  {
    "단어": "entirely",
    "발음": "intáiərli",
    "주요뜻": "완전히|전적으로|전혀|거의",
    "메모": "1)entire 형용사-전부의 온전한"
  },
  {
    "단어": "currently",
    "발음": "kə́ːrəntli",
    "주요뜻": "현재의|최근의|한창|유창하게",
    "메모": "1)Current 형용사 -지금의 현재의새로운\rCurrency 명사 - 유통 화폐"
  },
  {
    "단어": "considerably",
    "발음": "kənsídərəbli",
    "주요뜻": "많이|상당히|현저히",
    "메모": "1)consider 동사 - 고려하다. 배려하다\rconsidering : 전치사 - ～을 고려하면"
  },
  {
    "단어": "concurrent",
    "발음": "kənkə́ːrənt",
    "주요뜻": "동시 발생의|병발 사정|공동으로 작용하는",
    "메모": "1)Concurrence 명사 - 동의 동시 발생\rConcurrent 형용사 ～ 동시 발생의 공존의"
  },
  {
    "단어": "completely",
    "발음": "kəmplíːtli",
    "주요뜻": "완전히|완벽하게|모두|전적으로|철저히",
    "메모": "1)complete : 형용사 - 완전한 완성된\rcompletion 명사 - 완성"
  },
  {
    "단어": "cordially",
    "발음": "kɔ́ːrdʒəli",
    "주요뜻": "진심으로|성심껏|정성껏",
    "메모": "1)cordial : 형용사 -진정의 진심 어린\rcordiality : 명사 -진심 성심 성의"
  },
  {
    "단어": "calmly",
    "발음": "kάːmli",
    "주요뜻": "침착하게|조용히|냉정하게",
    "메모": "1)calmness 명사 - 고요 평안\rcalm : 형용사 - 잔잔한. 고요한 평온한"
  },
  {
    "단어": "approximately",
    "발음": "əprάksəmətli",
    "주요뜻": "약…|대략|정도|…여",
    "메모":
        "1)approximate : 형용사 - 근접한 대강의.\rapproxidation : 명사 - 추정 접근 근사\rapproximative 형용사 - 근사적인 개략적인"
  },
  {
    "단어": "aggressive",
    "발음": "əgrésiv",
    "주요뜻": "공격적인|적극적인|활동적인|과감한|침략",
    "메모":
        "1)aggressive ' 형용사 - 공격적인  적극적인  침략적인\raggressiveness : 명사 - 공격성  적극성\raggression : 명사 - 공격  침략"
  },
  {
    "단어": "permanent",
    "발음": "pə́ːrmənənt",
    "주요뜻": "영구적인|상설의|정규직의|영원한|불변의",
    "메모":
        "1)permanently . 부사 - 영 원히  영구히\rpermanence 명사 - 영속[성1 . 내구『성1\rpermanency : 명사 - 영속적인 것 [사람 지위]"
  },
  {
    "단어": "industrial",
    "발음": "indΛstriəl",
    "주요뜻": "산업의|공업의",
    "메모": "1)industrious : 형용사 - 근면한\rindustry 명사 - 산업"
  },
  {
    "단어": "transferable",
    "발음": "trænsfə́ːrəbl",
    "주요뜻": "양도할 수 있는|이전할 수 있는|전사할 수 있는",
    "메모":
        "1)transferred 형용사 - 양도된행위\rtransferability ' 명사 - 양도성\rtransfer 동사 - 양도하다. 전근시키다. 갈아타다"
  },
  {
    "단어": "complex",
    "발음": "kəmpléks kάmpleks｜kɔ́mpleks",
    "주요뜻": "복잡한|단지|복합의|콤플렉스|종합의",
    "메모": "1)complexity 명사 - 복잡성"
  },
  {
    "단어": "vacant",
    "발음": "véikənt",
    "주요뜻": "공석인|비어 있는|텅 빈|없는",
    "메모": "1)vacate . 동사 - 비우다 퇴거하다\rvacancy : 명사 - 빈방 공석"
  },
  {
    "단어": "operational",
    "발음": "ὰpəréiʃənl",
    "주요뜻": "경영상의|사용 가능한|작전의",
    "메모":
        "1)operative : 형용사 - 영향을 미치는 실효가 있는\roperation : 명사 - 작동. 운영  작전\roperate : 동사 - 작동하다. 운영하다. 작전하다"
  },
  {
    "단어": "seasonal",
    "발음": "síːzənl",
    "주요뜻": "계절적인|주기적인|어느 계절에 한정된",
    "메모":
        "1)seasoned : 형용사 - 숙련된. 맛을 곁들인\rseason : 명사 - 계절\rseasoning 명사-조미료가미흥취"
  },
  {
    "단어": "less",
    "발음": "les",
    "주요뜻": "덜한|적게|…없이|줄인|더 작은",
    "메모":
        "1)lesser 형용사 -적은\rleast 형용사 - 최소의 가장 덜한1 little의 최상급:\rlessen 동사 - 줄이다. 감축시키다"
  },
  {
    "단어": "confident",
    "발음": "kάnfədənt",
    "주요뜻": "자신 있는|확신하는|믿는|자부|장담",
    "메모": "1)confidence : 명사 - 신용 신뢰\rconfide : 동사 - 신뢰하다 털러놓다"
  },
  {
    "단어": "revise",
    "발음": "riváiz",
    "주요뜻": "개정하다|수정하다|새로운|조정하다|바꾸다",
    "메모":
        "1)revising 형용사 -개정하는 변경하는[사람]\rrevision 명사 -개정 보정\rrevise : 등사 -바꾸다. 개정하다"
  },
  {
    "단어": "varied",
    "발음": "vέərid",
    "주요뜻": "다양한|갖가지의|다양화된",
    "메모": "1)variously 부사 - 여러 가지로 다양하게\rvariety 명사 - 변화 다양성"
  },
  {
    "단어": "qualified",
    "발음": "kwάləfàid",
    "주요뜻": "자격이 있는|자질이 있는|적임의|적합한",
    "메모": "1)qualify : 동사 - 자적을 주다 적임이다\rqualification 명사 -자질. 자격"
  },
  {
    "단어": "specific",
    "발음": "spisífik",
    "주요뜻": "특정한|구체적인|특별한|맞춘|상세한",
    "메모": "1)specify 동사 - 명확히 하다. 구체화하다\rspecifier 명사 - 명시하는 것 . 구분자"
  },
  {
    "단어": "successful",
    "발음": "səksésfəl",
    "주요뜻": "성공한|잘된|합격한",
    "메모":
        "1)successfully : 부사 - 성공적으로\rSuccess . 명사 - 성공 출세\rsucceed : 동사 - 성공하다"
  },
  {
    "단어": "satisfactory",
    "발음": "sӕtisfǽktəri",
    "주요뜻": "만족스러운",
    "메모":
        "1)satisfied : 형용사 - 만족한 충족된[사람]\rsatisfying : 형용사 - 만족시키는[사물]\rsatisfaction : 명사 - 만족 충족"
  },
  {
    "단어": "reliable",
    "발음": "riláiəbl",
    "주요뜻": "신뢰할 만한|믿을 만한|신빙성 있는|믿음직한",
    "메모":
        "1)reliant : 형용사 - 의지하는 신뢰하는[행위]\rrelying : 형용사 - 의지하고 있는[행위]\rreliability : 명사 - 신뢰성\rreliance . 명사 - 의존 신뢰\rreliably . 부사 - 확실하게 신뢰할 수 있게"
  },
  {
    "단어": "regular",
    "발음": "régjulər",
    "주요뜻": "정기의|규칙적인|보통의|정례의|일상적인",
    "메모":
        "1)regularity : 명사 - 규칙-질서\rregularize : 동사 - 규칙적으로 하다 합법화하다\rregularly : 부사 - 규칙적으로 본격적으로"
  },
  {
    "단어": "realistic",
    "발음": "rìːəlístik",
    "주요뜻": "현실적인|사실적인|실질적인|진짜같은",
    "메모":
        "1)realism : 명사 - 사실주의 현실주의\rrealist : 명사 - 현실주의자\rrealistically : 부사 -_현실적으로"
  },
  {
    "단어": "protective",
    "발음": "prətéktiv",
    "주요뜻": "보호하는|방어적인",
    "메모": "1)Protect . 동사 - 보호하다. 보존하다\rprotection : 명사 - 보호 보존"
  },
  {
    "단어": "persuasive",
    "발음": "pərswéisiv",
    "주요뜻": "설득력 있는|설득적인|유인",
    "메모":
        "1)persuadable : 형용사 - 설득할 수 있는 종용할 수 있는\rpersuade ' 동사 - 설득하다 종용하다\rpersuasion . 명사 - 설득 종용"
  },
  {
    "단어": "numerous",
    "발음": "´nuːmərəs",
    "주요뜻": "수많은|다양한|다수의",
    "메모":
        "1)numerical . 형용사 - 수[수]의 계산 능력의\rnumeral . 명사 - 수 숫자\rnumerate : 동사 - 세다 열거하다"
  },
  {
    "단어": "lasting",
    "발음": "lǽstiŋ",
    "주요뜻": "지속되는|영구적인|내구력이 있는|오랜|영원한",
    "메모": "1)lastingly ' 부사 ～ 연속적으로 영구적으로\rlast ' 동사 - 지속되다. 계속되다\r"
  },
  {
    "단어": "involved",
    "발음": "invάlvd",
    "주요뜻": "관련된|관여하는|참가한|연루된|…을 포함하는",
    "메모":
        "1)involving : 형용사 - 관련시키는 연루시키는[능동]\rinvolvement : 명사 - 관련 연루\rinvolve : 동사 - 관련시키다"
  },
  {
    "단어": "inspect",
    "발음": "inspékt",
    "주요뜻": "검사하다|조사하다|면밀하게 살피다",
    "메모": "1)inspection : 명사 - 검사 조사\rinspect : 동사 - 검사하다"
  },
  {
    "단어": "incidental",
    "발음": "ìnsədéntl",
    "주요뜻": "우연한|부차적인|우발의|간접적인",
    "메모":
        "1)incidence : 명사 - 발생\rincident . 명사 - 우발적 사건 부수적인 것\rincidently ' 부사 - 우연히 부수적으로"
  },
  {
    "단어": "formal",
    "발음": "fɔ́ːrməl",
    "주요뜻": "공식적인|형식적인|정식의|정장|격식 차린",
    "메모":
        "1)formalize ' 동사 - 정식화하다 형식화하다\rformally 부사 - 정식으로 의례적으로\rformalness . 명사 - 형식 의7례"
  },
  {
    "단어": "foreseeable",
    "발음": "fɔːrsíːəbl",
    "주요뜻": "예견할 수 있는",
    "메모":
        "1)foreseeing 형용사 - 예견하는[사람:\rforesight : 명사 - 예견\rforesee ' 동사 - 예견하다"
  },
  {
    "단어": "expansive",
    "발음": "ikspǽnsiv",
    "주요뜻": "팽창성 있는|광범위한|발전적인",
    "메모":
        "1)expand : 동사 - 확대하다. 팽창하다\rexpanse ' 명사 - 확대 팽창\rexpansion : 명사 - 확대 팽창"
  },
  {
    "단어": "economical",
    "발음": "èkənάmikəl ìːkənάmikəl",
    "주요뜻": "경제의|실속있는",
    "메모":
        "1)economic . 형용사 - 경제상의 경제를 위한[경제]\reconomically ' 부사 - 알뜰하게 경제적으로\reconomics . 명사 - 경제학\reconomy ' 명사 - 경제"
  },
  {
    "단어": "demanding",
    "발음": "dimǽndiŋ",
    "주요뜻": "요구|주장|필요한|촉구|부담",
    "메모": "1)demandingly ' 부사 - 까다롭게 지나치게\rdemand : 동사 - 요구하다 청구하다"
  },
  {
    "단어": "critical",
    "발음": "krítikəl",
    "주요뜻": "비판적인|중요한|결정적인|비평|위험한",
    "메모":
        "1)critic : 명사 - 비판자 비만자\rcritique . 명사 - 비평 평론\rcriticize : 동사 - 비판하다 비난하다"
  },
  {
    "단어": "courteous",
    "발음": "kə́ːrtiəs",
    "주요뜻": "예의 바른|정중한|친절한",
    "메모":
        "1)Courteously . 부사 - 예의 바르게 인정 많게도\rCourteousness : 명사 - 공손함 예의 바름\rCourtesy . 명사 - 정중함 예의 바름"
  },
  {
    "단어": "complicated",
    "발음": "kάmpləkèitid",
    "주요뜻": "복잡한|어려운|난해한",
    "메모":
        "1)complicating : 형용사 - 악화시키는[동작]\rcomplicate : 동사 - 복잡하게 만들다 악화시키다\rcomplication : 명사 - 분규 혼란"
  },
  {
    "단어": "accessible",
    "발음": "æksésəbl əksésəbl",
    "주요뜻": "접근할 수 있는|사용하기 쉬운|이용 가능한",
    "메모":
        "1)accessing . 형용사 - 접근하는:동작]\raccess ' 명사 - 접근 입구\raccession 명사 - 취득 계승 증대"
  },
  {
    "단어": "confidentiality",
    "발음": "kὰnfədenʃiǽləti",
    "주요뜻": "기밀성|비밀성",
    "메모":
        "1)confidentially ' 부사 - 기밀로서 은밀하게\rconfidential . 형용사 - 기밀의 비밀의\rconfident : 형용사 - 확신하는 자신 있는"
  },
  {
    "단어": "maturity",
    "발음": "mətjúərəti",
    "주요뜻": "성숙|만기",
    "메모": "1)mature . 형용사 - 성숙한 공들인 만료된"
  },
  {
    "단어": "repair",
    "발음": "ripέər",
    "주요뜻": "수리|치료하다|고치다|회복하다|수선하다",
    "메모": "1)repaired . 분사 - 수리된\rrepairable 형용사 - 수리할 수 있는"
  },
  {
    "단어": "flexibility",
    "발음": "flèksəbíləti",
    "주요뜻": "융통성|구부리기 쉬움|신축성",
    "메모": "1)flexible : 형용사 - 융통성 있는\rflexibly . 부사 - 융통성 있게"
  },
  {
    "단어": "feasibility",
    "발음": "fìːzəbíləti",
    "주요뜻": "타당성|가능성|경제성|사업성|실현성",
    "메모": "1)feasibly : 부사 - 실현 가능하게 적당하게\rfeasible ' 형용사 - 실 현 가능한 적당한"
  },
  {
    "단어": "optimism",
    "발음": "άptəmìzm",
    "주요뜻": "낙관주의|낙천주의|낙천관",
    "메모":
        "1)optimistic ' 형용사 - 낙천적인 낙관적인\roptimize . 동사 - 낙관하다 최적화하다\roptimistically : 부사 - 낙천적으로 낙관적으로"
  },
  {
    "단어": "consciousness",
    "발음": "kάnʃəsnis",
    "주요뜻": "의식|인식|정신",
    "메모": "1)Conscious : 형용사 - 의식이 있는 지각하고 있는\rconscientious : 형용사 - 양성적인 성실한"
  },
  {
    "단어": "benefit",
    "발음": "bénəfit",
    "주요뜻": "혜택|이익|도움이 되다",
    "메모":
        "1)benefited : 형용사 - 혜택을 받은\rbenefitting ' 형용사 ～ 혜택을\rbeneficial 형용사 - 유익한 도움을 주는"
  },
  {
    "단어": "observance",
    "발음": "əbzə́ːrvəns",
    "주요뜻": "준수|식전|관습",
    "메모": "1)observation ; 명사 - 관찰 주목\robserve . 동사 - 관찰하다 준수하다"
  },
  {
    "단어": "prosperity",
    "발음": "praspérəti",
    "주요뜻": "번영|번창",
    "메모":
        "1)Prosper : 동사 - 번영하다\rProsperous : 형용사 - 번영하는 순조로운\rprospering : 형용사 - 번영한고 있는 융성하고 있는\r"
  },
  {
    "단어": "construction",
    "발음": "kənstrΛkʃən",
    "주요뜻": "건설|공사|건축|건립",
    "메모": "1)construct : 동사 - 건설하다. 구성하다\rconstructive : 형용사 - 건설적인"
  },
  {
    "단어": "effectiveness",
    "발음": "iféktivnis",
    "주요뜻": "효과적인|유효성|효율성|실효성",
    "메모": "1)effect ' 명사 - 효과 효능 결과[가산명사]\reffective . 형용사 - 효력이 있는 효과적인"
  },
  {
    "단어": "qualification",
    "발음": "kwὰləfikéiʃən",
    "주요뜻": "자격|자질|능력",
    "메모":
        "1)qualify : 동사 - 자격이 있다 능력이 있다\rqualified : 형용사 - 자격이 있는 능력을 갖춘\r\rHe has the right qualifications for the job. \r그는그 직업에 알맞은 자격 조건을 가지고 있습니다.\r"
  },
  {
    "단어": "encouragement",
    "발음": "inkə́ːridʒmənt",
    "주요뜻": "격려|장려|용기",
    "메모":
        "1)encourage . 동사 - 격려하다. 장려하다\rencouraging : 형용사 - 용기를 북돋는 격려하는 장려하는\r"
  },
  {
    "단어": "means",
    "발음": "miːnz",
    "주요뜻": "수단|방법|목적|수입|재산",
    "메모": "1)meanings : 명사 - 의미 취지\rmean : 등사 - 의미하다"
  },
  {
    "단어": "reimburse",
    "발음": "rìːimbə́ːrs",
    "주요뜻": "상환하다|배상하다|변상하다",
    "메모": "1)reimburse 동사-변상하다 상환하다\rreimbursable . 형용사 - 변상 가능한"
  },
  {
    "단어": "monopoly",
    "발음": "mənάpəli",
    "주요뜻": "독점|전매|독주",
    "메모": "1)monopolize ' 동사 - 독점하다"
  },
  {
    "단어": "receptionist",
    "발음": "risépʃənist",
    "주요뜻": "접수 계원|접대원|접수원",
    "메모":
        "1)reception : 명사 - 수용 환영회[행사]\rreceptacle : 명사 -그릇 저장소 대피소[사물]\rreceptiveness : 명사 - 수용력 이해력[개념]"
  },
  {
    "단어": "comparison",
    "발음": "kəmpǽrisn",
    "주요뜻": "비교|…에 비해|대조적으로",
    "메모":
        "1)Compare : 동사 - 비교하다. 비유하다\rcomparable : 형용사 - 비교할 만한 필적하는\rComparing . 형용사 - 비교하는 비유하는"
  },
  {
    "단어": "reservation",
    "발음": "rèzərvéiʃən",
    "주요뜻": "예약|보호 구역|유보|의구심|거리낌",
    "메모": "1)reserved '형용사-남겨둔 예비의"
  },
  {
    "단어": "contributor",
    "발음": "kəntríbjutər",
    "주요뜻": "공헌자|기여|원인|기부자|기고가",
    "메모": "1)contribution ' 명사 - 기부 기여"
  },
  {
    "단어": "utilization",
    "발음": "juːtəlizéiʃən",
    "주요뜻": "이용|활용",
    "메모": "1)utilize : 동사 - 이음하다. 활용하다\rutilizable : 형용사 - 유용할 수 있는 활용할 수 있는\r"
  },
  {
    "단어": "representative",
    "발음": "rèprizéntətiv",
    "주요뜻": "대표적인|대의원의|국회의원|하원 의원|대리인",
    "메모": "1)representation : 명사 - 대표 상징 [행위]\rrepresents : 동사 - 대표하다 상징하다"
  },
  {
    "단어": "remainder",
    "발음": "riméindər",
    "주요뜻": "나머지|남은|잔여",
    "메모": "1)remain : 동사 - 여전히 ～하다 ～ 상태로 남아 있다\rremaining : 형용사 - 나머지의 잔여의"
  },
  {
    "단어": "regulation",
    "발음": "règjuléiʃən",
    "주요뜻": "규제|규정|법규|정규의",
    "메모":
        "1)regulator : 명사 - 규제자 단속원 [행위자]\rregulate : 동사 - 규제하다 규율하다\rregulatory ' 형용사 - 규제의 단속의"
  },
  {
    "단어": "performance",
    "발음": "pərfɔ́ːrməns",
    "주요뜻": "성능|성과|수행|공연|실적",
    "메모":
        "1)performer ' 명사 - 연주자. 연기자[행위자]\rperform : 동사 - 공연하다 실행하다\rperforming . 형용사 - 공연하는 실행하는"
  },
  {
    "단어": "participation",
    "발음": "paːrtìsəpéiʃən",
    "주요뜻": "참여|참가|참전|가입|포함",
    "메모": "1)participant : 명사 참석자[행위자]\rparticipate : 동사 - 참석하다"
  },
  {
    "단어": "opening",
    "발음": "óupəniŋ",
    "주요뜻": "개막|개방하는|여는|첫|오프닝",
    "메모":
        "1)open : 동사 - 열다 개방하다\rOpenness ' 명사 - 개방적임. .솔직함_\rOpenly : 부사 - 공공연히 드러내놓고"
  },
  {
    "단어": "location",
    "발음": "loukéiʃən",
    "주요뜻": "위치|장소|지역|자리",
    "메모": "1)locale . 동사 - 위치시키다. 소재를 파악하다"
  },
  {
    "단어": "health",
    "발음": "helθ",
    "주요뜻": "건강|보건|의료|헬스|몸에 좋음",
    "메모": "1)healthy 형용사 - 건강한\rhealthful : 형용사 - 건강에 이로운"
  },
  {
    "단어": "freshness",
    "발음": "fréʃnis",
    "주요뜻": "신선미|생생함|참신함",
    "메모":
        "1)fresh : 형용사 - 신선한 참신한\rfreshly ' 부사 - 신선하게 참신하게\rfreshen . 동사 - 신선하게 하다. 참신해지다"
  },
  {
    "단어": "expiration",
    "발음": "èkspəréiʃən",
    "주요뜻": "만료|만기|유효기간",
    "메모": "1)expire . 동사 - [기한 등이] 만료되다\rexpired . 분사 - 만료된"
  },
  {
    "단어": "expectation",
    "발음": "èkspektéiʃən",
    "주요뜻": "기대치|기대|예상|전망|추측",
    "메모":
        "1)expect . 동사 - 예상하다. 기대하다\rexpecting ' 형용사 - 예상하는 기대하는\rexpectant :형용사 -임신 중인 가망이 있는"
  },
  {
    "단어": "evidence",
    "발음": "évədəns",
    "주요뜻": "증거|근거|흔적|단서",
    "메모":
        "1)evident : 형용사 - 분명한 명백한\revidential : 형용사 - 증거가 되는\revidently : 분명하게 명백하게"
  },
  {
    "단어": "disappointment",
    "발음": "dìsəpɔ́intmənt",
    "주요뜻": "실망|낙담",
    "메모":
        "1)disappointment . 명사 - 실망\rdisappoint : 동사 - 실망시키다 방해하다\rdisappointing : 형용사 - 실망시키는 방해하는"
  },
  {
    "단어": "delivery",
    "발음": "dilívəri",
    "주요뜻": "분만|배달|배송|운송|인도",
    "메모":
        "1)delivery : 명사 - 배달\rdeliver . 동사 - 전하다 말하다 인도하다\rdeliverable : 형용사 - 인도할 수 있는 전달할 수 있는\r"
  },
  {
    "단어": "coverage",
    "발음": "kΛvəridʒ",
    "주요뜻": "보도|커버리지 |방송|지역|범위",
    "메모":
        "1)coverage : 명사 - 취재 보상 범위\rCover ' 동사 - 취재하다. 포함하다\rcovering : 형용사 - 취재하는 포함하는\r"
  },
  {
    "단어": "confirmation",
    "발음": "kὰnfərméiʃən",
    "주요뜻": "확인|확증|입증",
    "메모":
        "1)confirmation 명사 - 확증 승인\rconfirm : 동사 - 입증하다. 확인하다\rconfirming ' 형용사 - 입증하는 확인하는\rconfirmed : 형용사 - 확증된 승인된"
  },
  {
    "단어": "conclusion",
    "발음": "kənklúːʒən",
    "주요뜻": "결론|타결|종료|판단",
    "메모":
        "1)Conclusion : 명사 - 결론\rconclude ' 동사 - 결말을 짓다 체결하다\rconcluding : 형용사 - 결말을 짓는\rconclusive . 형용사 - 결정적인 종국적인\rconclusively . 부사 - 최종적으로 결정적으로"
  },
  {"단어": "unfavorable", "발음": "əˌnfeiˈvərəbəl", "주요뜻": "불리한|적개심이 있는|호의적이 아닌"},
  {"단어": "summary", "발음": "sΛməri", "주요뜻": "요약|개괄|약식|성명"},
  {"단어": "appointed", "발음": "əpɔ́intid", "주요뜻": "임명된|정해진|지정된"},
  {"단어": "gain", "발음": "gein", "주요뜻": "얻다|증가하다|이익|획득하다|달성하다"},
  {"단어": "accurate", "발음": "ǽkjurət", "주요뜻": "정확한|정밀한|올바른|일치한|적중"},
  {"단어": "abstract", "발음": "æbstrǽkt", "주요뜻": "추상적인|초록|요약하다"},
  {"단어": "interruption", "발음": "ìntərΛpʃən", "주요뜻": "방해|중단|장애"},
  {"단어": "knowledgeable", "발음": "nάlidʒəbl", "주요뜻": "박식한|정통해 있는|지성이 있는"},
  {"단어": "contribution", "발음": "kὰntrəbjúːʃən", "주요뜻": "기여|공헌|기부|기고"},
  {"단어": "radical", "발음": "rǽdikəl", "주요뜻": "급진적인|과격한|근본적인|혁신적인|급진주의자"},
  {"단어": "dispute", "발음": "dispjúːt", "주요뜻": "분쟁|논쟁|문제|갈등|쟁의"},
  {"단어": "portion", "발음": "pɔ́ːrʃən", "주요뜻": "부분|일부|양|분배하다|인분"},
  {"단어": "abide", "발음": "əbáid", "주요뜻": "준수하다|지키다|따르다|살다|참다"},
  {"단어": "recognition", "발음": "rèkəgníʃən", "주요뜻": "인식|인정|평가|승인|수여"},
  {"단어": "mutual", "발음": "mjúːʧuəl", "주요뜻": "상호적인|서로의|공동의"},
  {"단어": "gender discrimination", "주요뜻": "성 차별"},
  {"단어": "prospective customer", "주요뜻": "잠재고객"},
  {"단어": "potential", "발음": "pəténʃəl", "주요뜻": "잠재적인|가능성 있는|미래의|후보|위치"},
  {"단어": "strategic", "발음": "strətíːdʒik", "주요뜻": "전략적인|중요한"},
  {"단어": "implement", "발음": "ímpləmənt", "주요뜻": "시행하다|실행하다|실시하다|방법|운영"},
  {"단어": "expiration date", "주요뜻": "유효 기간|만기일|유효 기한"},
  {"단어": "application form", "주요뜻": "신청 용지|신청서|응시원서"},
  {"단어": "construction site", "주요뜻": "건축 부지|공사 현장"},
  {"단어": "apartment complex", "주요뜻": "아파트 단지"},
  {"단어": "stationary store", "주요뜻": "문방구"},
  {"단어": "jewelry store", "주요뜻": "보석상"},
  {"단어": "fringe benefit", "주요뜻": "부가 급부|임금 외 지급|부가 급여"},
  {"단어": "grocery store"},
  {"단어": "feat", "발음": "fiːt", "주요뜻": "위업|공적|묘기"},
  {
    "단어": "carbohydrate",
    "발음": "kὰːrbouháidreit",
    "주요뜻": "탄수화물|함수 탄소|탄수화물을 포함하고 있는 음식"
  },
  {"단어": "yield", "발음": "jiːld", "주요뜻": "수율|항복|수확|수익률|양보하다"},
  {"단어": "breed", "발음": "briːd", "주요뜻": "육성|품종|사육하다|번식하다|기르다"},
  {"단어": "amphibian", "발음": "æmfíbiən", "주요뜻": "양서류의|수륙 양용 비행기|수륙 양용차"},
  {"단어": "clay", "발음": "klei", "주요뜻": "점토|진흙|클레이"},
  {"단어": "heart attack", "주요뜻": "심장 발작|심장마비|심근 경색"},
  {"단어": "neutral", "발음": "njúːtrəl", "주요뜻": "중립|중성|중간|중도|균형"},
  {
    "단어": "trim",
    "발음": "trim",
    "주요뜻": "잘라내다|다듬다|장식|날씬한",
    "메모": "1)[깎아] 다듬다 정돈하다 장식하다."
  },
  {"단어": "stick", "발음": "stik", "주요뜻": "막대기|붙다|갇히다|고수하다|찌르다"},
  {"단어": "weed", "발음": "wiːd", "주요뜻": "잡초|제거하다|마리화나"},
  {"단어": "locust", "발음": "lóukəst", "주요뜻": "메뚜기|매미|아까시나무"},
  {"단어": "pervasive", "발음": "pərvéisiv", "주요뜻": "퍼지는|스며드는|골고루 미치는"},
  {"단어": "inaugurate", "발음": "inɔ́ːgjurèit", "주요뜻": "취임시키다|시작하다|출범|들어서다"},
  {
    "단어": "burdensome",
    "발음": "bə́ːrdnsəm",
    "주요뜻": "귀찮은|부담이 되는|짐스러운",
    "메모":
        "1)Jim enjoys detailed work so the job was not burdensome for her.\r짐은 정밀한 일을 좋아해서 그일은 그녀에게 부담이 되지 않는다."
  },
  {
    "단어": "alternative",
    "발음": "ɔːltə́ːrnətiv æltə́ːrnətiv",
    "주요뜻": "대안|대체|다른|대신의|얼터너티브",
    "메모":
        "1)There is no alternative; I must choose this on-e.\r다른 대안이 없어 : 난 이걸 선택해야만 해"
  },
  {"단어": "attempt", "발음": "ətémpt", "주요뜻": "시도하다|노력|기도하다|계획하다|미수"},
  {"단어": "task", "발음": "tæsk", "주요뜻": "과제|업무|일|작업|문제"},
  {"단어": "slum", "발음": "slʌm", "주요뜻": "빈민가|슬럼가|빈민굴"},
  {"단어": "robbery", "발음": "rάbəri", "주요뜻": "강도|도둑|약탈"},
  {"단어": "robber", "발음": "rάbər", "주요뜻": "강도|도둑"},
  {"단어": "rob", "발음": "rab", "주요뜻": "빼앗다|털다|롭|훔치다|강탈하다"},
  {"단어": "drug", "발음": "drʌg", "주요뜻": "약물|약|마약|약품|약제"},
  {"단어": "strip", "발음": "strip", "주요뜻": "스트립|박탈하다|벗기다|띠|박판"},
  {"단어": "exaggerate", "발음": "igzǽdʒərèit", "주요뜻": "과장하다|지나친"},
  {"단어": "request", "발음": "rikwést", "주요뜻": "요청|요구|신청|청구|부탁"},
  {"단어": "unreasonable", "발음": "ənriˈznəbəl", "주요뜻": "불합리한|무리한"},
  {"단어": "volunteer", "발음": "vὰləntíər", "주요뜻": "자원하다|봉사하다|자발적인|지원하다|참가자"},
  {"단어": "professional", "발음": "prəféʃənl", "주요뜻": "프로의|전문의|직업의"},
  {"단어": "upside down", "발음": "Λpsàiddáun", "주요뜻": "거꾸로|뒤집힌|위아래|반대로|엉망"},
  {"단어": "uphold", "발음": "Λphóuld", "주요뜻": "지키다|확정하다|유지하다|따르다"},
  {"단어": "upgrade", "발음": "əpgreiˈd", "주요뜻": "업그레이드|상향|높이다|개선|향상"},
  {"단어": "expansion", "발음": "ikspǽnʃən", "주요뜻": "확장|확대|팽창|증대|증설"},
  {"단어": "expand", "발음": "ikspǽnd", "주요뜻": "확대하다|확장하다|늘다|성장하다|넓히다"},
  {"단어": "civil war", "주요뜻": "내전|남북 전쟁|시민 전쟁 |독립전쟁|내란"},
  {"단어": "civil law", "주요뜻": "민법|로마법|국내법"},
  {
    "단어": "mess",
    "발음": "mes",
    "주요뜻": "엉망|혼란|망치다|난장판|문제",
    "메모": "1)난잡 뒤죽박죽 엉망진창"
  },
  {"단어": "massive", "발음": "mǽsiv", "주요뜻": "대규모의|거대한|막대한|대대적인|강력한"},
  {"단어": "patent", "발음": "pǽtnt", "주요뜻": "특허|보호|의장"},
  {"단어": "illumination", "발음": "ilùːmənéiʃən", "주요뜻": "조명|전등 장식|밝게 하기"},
  {"단어": "delve", "발음": "delv", "주요뜻": "파다|탐구하다|동굴"},
  {"단어": "dignitary", "발음": "dígnitèri", "주요뜻": "고위 인사|고관|위엄 있는"},
  {"단어": "superintendent", "발음": "sùːpərinténdənt", "주요뜻": "관리자|감독하는|지도 감독자"},
  {"단어": "deem", "발음": "diːm", "주요뜻": "간주하다|생각하다|여기다"},
  {"단어": "identify", "발음": "aidéntəfài", "주요뜻": "확인하다|밝히다|알아보다|식별하다|찾아보다"},
  {"단어": "ensure", "발음": "inʃúər", "주요뜻": "…하기 위해|보장하다|확보하다|확실하게 하다"},
  {"단어": "feature", "발음": "fíːʧər", "주요뜻": "특징|기능|출연하다|특집|얼굴"},
  {"단어": "tandem", "발음": "tǽndəm", "주요뜻": "동시에|같이|따라|함께|더불어"},
  {"단어": "bare", "발음": "bεər", "주요뜻": "노출된|드러내다|극소량의|벌거벗은|단순한"},
  {
    "단어": "translation",
    "발음": "trænsléiʃən trænz-",
    "주요뜻": "번역|해석|통역|환산|평행 이동",
    "메모": "1)The translation was true to the original. \r그 번역은 원문에 충실했다.\r"
  },
  {
    "단어": "shimmer",
    "발음": "ʃímər",
    "주요뜻": "미광|희미하게 빛나다|어른거리다",
    "메모": "1)The calm sea shimmered in the moonlight. \r고요한 바다가 달빛에 빛났다"
  },
  {
    "단어": "paramount",
    "발음": "pǽrəmàunt",
    "주요뜻": "최고의|주요한|군주",
    "메모": "1)This is a matter of paramount importance. \r이것은 가장 중요한 일이다.\r"
  },
  {
    "단어": "cherish",
    "발음": "ʧériʃ",
    "주요뜻": "소중히 여기다|고이 간직하다|기리다",
    "메모": "1)I cherish my childhood memory. \r나는 내 어린 시절의 추억을 소중히 생각한다.\r"
  },
  {
    "단어": "tranquil",
    "발음": "trǽŋkwil",
    "주요뜻": "고요한|조용한",
    "메모": "1)She lived a very tranquil life. \r그녀는 조용한 생을 살았다.\r"
  },
  {
    "단어": "conspicuous",
    "발음": "kənspíkjuəs",
    "주요뜻": "과시적|눈에 띄는|두드러지는",
    "메모": "1)That is a conspicuous road sign. \r저것은 보기 쉬운 도로 표지이다.\r"
  },
  {
    "단어": "reluctant",
    "발음": "rilΛktənt",
    "주요뜻": "꺼리는|주저하는|망설이는|내키지 않는|마지못한",
    "메모": "1)He was reluctant to tell the truth. \r그는 진실을 말하기를 꺼렸다."
  },
  {
    "단어": "affiliate",
    "발음": "əfílièit",
    "주요뜻": "계열사|자회사|이중|설립|소속",
    "메모":
        "1)The college is affiliated to the University. \r단과대학은 종합대학에 관계되어 있다."
  },
  {
    "단어": "accomplice",
    "발음": "əkάmplis əkΛmplis",
    "주요뜻": "공범",
    "메모": "1)The thief have an accomplice. \r그 도둑은 공범자가 있었다. \r"
  },
  {
    "단어": "coherent",
    "발음": "kouhíərənt",
    "주요뜻": "논리적인|일관성 있는|시종일관한",
    "메모": "1)Your presentation is very coherent. \r너의 발표는 매우 시종일관 조리가 서 있다. "
  },
  {
    "단어": "discolor",
    "발음": "diskΛlər",
    "주요뜻": "…을 변색시키다|…의 색을 더럽히다|변색하다",
    "메모":
        "1)The orange juice will discolor your clothes. \r그 오렌지 주스는 당신 옷을 변색시킬 것입니다.\r"
  },
  {
    "단어": "contemplate",
    "발음": "kάntəmplèit",
    "주요뜻": "생각하다|심사숙고하다|고려하다|바라보다|계획하다",
    "메모":
        "1)Contemplate carefully before you make a decision. \r결정을 하기 전에 주의 깊게 숙고하세요."
  },
  {
    "단어": "contract",
    "발음": "kən´trækt",
    "주요뜻": "계약서|계약|맺다|수축하다|걸리다",
    "메모":
        "1)If wool is submerged in hot water it tends to contract. \r만약 울이 뜨거운 물에 잠기면 수축하는 경향이 있다.\r"
  },
  {
    "단어": "bargain",
    "발음": "bάːrgən",
    "주요뜻": "흥정하다|매매 계약|헐값|싼 물건",
    "메모":
        "1)I bargained with her for the use of the property. \r나는 그녀와 그 땅의 사용에 대해 흥정했다."
  },
  {
    "단어": "alliance",
    "발음": "əláiəns",
    "주요뜻": "동맹|협력|연합|단체",
    "메모": "1)We make an alliance with oil company. \r우리는 석유 회사와 협력 관계를 맺었다."
  },
  {
    "단어": "abortion",
    "발음": "əbɔ́ːrʃən",
    "주요뜻": "낙태|유산",
    "메모": "1)Abortion is illegal in many countries. \r임신중절은 많은 나라에서 불법이다\r"
  },
  {
    "단어": "distributor",
    "발음": "distríbjutər",
    "주요뜻": "판매자|유통업자|배급업자|급식|배전기",
    "메모":
        "1)Contact your distributor when you have a problem. \r문제점이 있으면 판매 대리점으로 연락하세요\r"
  },
  {
    "단어": "appliance",
    "발음": "əpláiəns",
    "주요뜻": "가전제품|기기",
    "메모": "1)This is an appliance furnished apartment. \r이곳은 가전제품이 설치된 아파트입니다."
  },
  {
    "단어": "deposit",
    "발음": "dipάzit",
    "주요뜻": "예금|보증금|비축|입금|공탁",
    "메모": "1)How much was the your deposit? \r당신의 예치금이 얼마였습니까?\r"
  },
  {
    "단어": "remit",
    "발음": "rimít",
    "주요뜻": "송금하다|면제하다|보내다",
    "메모": "1)Remit the money to our company at on-ce. \r지금 우리 회사로 송금해 주십시오. \r"
  },
  {
    "단어": "lucrative",
    "발음": "lúːkrətiv",
    "주요뜻": "수익성|많은 돈이 되는|이득|호황|수완이 좋은",
    "메모": "1)Stock market is lucrative business. \r주식시장은 수지 맞는 사업이다. \r"
  },
  {
    "단어": "reconsider",
    "발음": "riˌkənsiˈdər",
    "주요뜻": "…을 재고하다|고쳐 생각하다|재심하다",
    "메모": "1)Can you reconsider your decision? \r당신의 결정을 재고하실 수 있습니까?"
  },
  {
    "단어": "forward",
    "발음": "fɔ́ːrwərd",
    "주요뜻": "앞으로|전진하는|발전한|포워드|진보적인",
    "메모":
        "1)The purchase order was forwarded to the manager. \r구입 주문서가 지배인에게 발송되었습니다.\r"
  },
  {
    "단어": "supervisor",
    "발음": "súːpərvàizər",
    "주요뜻": "관리자|감독자|감독",
    "메모": "1)He is our new supervisor. \r그는 우리의 새 감독관이다. \r"
  },
  {
    "단어": "brisk",
    "발음": "brisk",
    "주요뜻": "활발한|호조의|올라간|밝은",
    "메모": "1)Business is brisk here in Korea. \r이곳 한국에는 사업이 활발합니다."
  },
  {
    "단어": "flourish",
    "발음": "flə́ːriʃ",
    "주요뜻": "번창하다|활약하다|성장하다|무성하다",
    "메모": "1)His flower business is flourishing. \r그의 꽃 사업이 번창하고 있습니다.\r"
  },
  {
    "단어": "commute",
    "발음": "kəmjúːt",
    "주요뜻": "통근하다|감형하다|교환하다|바꾸다",
    "메모": "1)I commute every morning by bus. \r나는 매일 아침 버스로 통근한다] "
  },
  {
    "단어": "delegate",
    "발음": "déligət  -gèit",
    "주요뜻": "대표|대의원|위임하다|사절",
    "메모":
        "1)The president of our company delegated a person to a convention. \r우리 회사의 사장은 한 사람을 대표로 회의에 파견했다.\r"
  },
  {
    "단어": "resign",
    "발음": "rizáin",
    "주요뜻": "사퇴|사임|물러나다|퇴진|체념",
    "메모":
        "1)You are free to resign your position anytime. \r당신은 당신 자리에서 언제든지 사직할 수 있습니다.\r"
  },
  {
    "단어": "cut",
    "발음": "kʌt",
    "주요뜻": "삭감하다|자르다|줄이다|인하하다|중단하다",
    "메모":
        "1)She is going to lay off some of employees due to budget cuts. \r그녀는 예산 감축 때문에 직원들 중 일부를 해고할 것이다.\r"
  },
  {
    "단어": "paycheck",
    "발음": "peiˈʧeˌk",
    "주요뜻": "봉급|급료|급료지불 수표",
    "메모": "1)I got my paycheck from the company. \r나는 회사로부터 봉급 지불 수표를 받았다."
  },
  {
    "단어": "expenditure",
    "발음": "ikspéndiʧər",
    "주요뜻": "지출|비용|소비",
    "메모":
        "1)My main expenditure is the school expense. \r나의 주된 지출은 학교에서 필요한 지출이다."
  },
  {
    "단어": "assessment",
    "발음": "əsésmənt",
    "주요뜻": "평가|조사|사정|학업|보고",
    "메모":
        "1)You will find economic assessment in this TV program. \r이 TV프로그램 경제 평가를 찾을 수 있습니다.\r"
  },
  {
    "단어": "profitable",
    "발음": "prάfitəbl",
    "주요뜻": "수익성이 좋은|이익이 되는|이윤을 내는|돈벌이가 되는|도움이 되는",
    "메모": "1)IT business is really profitable. \rIT 사업은 정말로 이윤이 많이 생긴다."
  },
  {
    "단어": "gateway",
    "발음": "geiˈtweiˌ",
    "주요뜻": "게이트웨이|관문|통로|출입구",
    "메모":
        "1)This program is the gateway to solve the problem. \r[이 프로그램이 그 문제를 푸는 수단이다. "
  },
  {
    "단어": "dealership",
    "발음": "diˈlərʃiˌp",
    "주요뜻": "상품 판매 자격|대리점|특약점",
    "메모":
        "1)Daehan motor company expanded dealerships in Cheju-island. \r대한 자동차 회사는 제주도에 판매 대리점을 확장했다.\r\r"
  },
  {
    "단어": "transaction",
    "발음": "trænsǽkʃən",
    "주요뜻": "거래|트랜잭션|업무|계약|입출금",
    "메모":
        "1)Using other person's credit card is an illegal transaction. \r다른 사람의 크레딧 카드를 사용하는 것은 불법 거래이다.\r"
  },
  {
    "단어": "commitment",
    "발음": "kəmítmənt",
    "주요뜻": "몰입|약속|책임|헌신|의지",
    "메모": "1)You should keep the marriage commitment. \r[결혼 서약을 꼭 지켜야 합니다.] "
  },
  {
    "단어": "margin",
    "발음": "mάːrdʒin",
    "주요뜻": "차이|마진|수익|가장자리|보증금",
    "메모": "1)He made a fair margin of profit. \r[그는 상당한 이익을 남겼다.] "
  },
  {
    "단어": "deficit",
    "발음": "défəsit",
    "주요뜻": "적자|결손|부족액",
    "메모":
        "1)Our trade deficit went up last quarter. \r[우리의 무역 적자가 지난 분기에 올라갔다.] \r"
  },
  {"단어": "launch", "발음": "lɔːnʧ", "주요뜻": "발사하다|시작하다|출시하다|발표|개시하다"},
  {"단어": "turnover", "발음": "tərˈnouˌvər", "주요뜻": "이직률|교체|전환|거래액|회전률"},
  {"단어": "takeover", "발음": "teiˈkouˌvər", "주요뜻": "탈취|인계|인수"},
  {"단어": "merge", "발음": "məːrdʒ", "주요뜻": "합병하다|통합하다|합쳐지다"},
  {"단어": "endure", "발음": "indjúər", "주요뜻": "견디다|지속하다|겪다|이기다|허락하다"},
  {"단어": "resist", "발음": "rizíst", "주요뜻": "저항하다|반대하다|참다|저지하다"},
  {"단어": "withstand", "발음": "wiðstǽnd wiθ-", "주요뜻": "견디다|이겨내다"},
  {"단어": "purify", "발음": "pjúərəfài", "주요뜻": "…을 정화하다|깨끗이 하다|정제하다"},
  {"단어": "warranty", "발음": "wɔ́ːrənti", "주요뜻": "보증|담보|보상|워런티|수명"},
  {"단어": "validate", "발음": "vǽlədèit", "주요뜻": "검증|인증|입증하다|평가|증명"},
  {"단어": "vacancy", "발음": "véikənsi", "주요뜻": "빈자리|빈방|결원"},
  {"단어": "unprecedented", "발음": "ənpreˈsideˌntid", "주요뜻": "전례 없는|유례없는|엄청난|이례적"},
  {"단어": "unlimited", "발음": "ənliˈmətəd", "주요뜻": "제한 없는|무한한|자유로운"},
  {"단어": "transition", "발음": "trænzíʃən", "주요뜻": "변화|전환|인수|과정|이동"},
  {"단어": "fare", "발음": "fεər", "주요뜻": "요금|운임|실적을 내다|상연물"},
  {"단어": "charge", "발음": "ʧaːrdʒ", "주요뜻": "혐의|충전|요금|기소|책임"},
  {"단어": "fee", "발음": "fiː", "주요뜻": "요금|금액|사례금"},
  {"단어": "tolerate", "발음": "tάlərèit", "주요뜻": "참다|견디다|내성이 있다"},
  {"단어": "timely", "발음": "táimli", "주요뜻": "적시의|때맞춘|때마침"},
  {"단어": "tariff barrier", "주요뜻": "관세 장벽"},
  {
    "단어": "sustainable",
    "발음": "səstéinəbl",
    "주요뜻": "지속 가능한|유지 가능한|견딜 수 있는|고갈되지 않는|지탱할 수 있는"
  },
  {"단어": "surgery", "발음": "sə́ːrdʒəri", "주요뜻": "수술실|수술|외과"},
  {"단어": "summarize", "발음": "sΛməràiz", "주요뜻": "…을 요약하다|간략하게 말하다|간추려 말하다"},
  {"단어": "supplement", "발음": "sΛpləmənt", "주요뜻": "보조식품|보완|보충|부록|증보"},
  {"단어": "spouse", "발음": "spaus spauz", "주요뜻": "배우자"},
  {"단어": "stare", "발음": "stεər", "주요뜻": "쳐다보다|바라보다|응시하다|노려보다|뚫어지게 보다"},
  {"단어": "stain", "발음": "stein", "주요뜻": "얼룩|오염|오점|자국|더럽히다"},
  {"단어": "sincerely", "발음": "sinsíərli", "주요뜻": "진심으로|진정으로|성실히|정말로|진지하게"},
  {"단어": "simultaneously", "발음": "sàiməltéiniəsli", "주요뜻": "동시에|일제히"},
  {"단어": "significant", "발음": "signífikənt", "주요뜻": "중요한|의미 있는|상당한|중대한|현저한"},
  {"단어": "shortly", "발음": "ʃɔ́ːrtli", "주요뜻": "곧|얼마 안 있어|금방|간단히"},
  {"단어": "shipment", "발음": "ʃípmənt", "주요뜻": "배송|선적량|출하|수송|운반"},
  {"단어": "severely", "발음": "sivíərli", "주요뜻": "심하게|엄하게|가혹하게|혹독히"},
  {"단어": "settlement", "발음": "sétlmənt", "주요뜻": "정착|해결|합의|타결|식민지"},
  {"단어": "hand-me-down", "주요뜻": "중고의"},
  {"단어": "resolution", "발음": "rèzəlúːʃən", "주요뜻": "해상도|해결|결의|결심|결정"},
  {"단어": "resignation", "발음": "rèzignéiʃən", "주요뜻": "사퇴|사임|사표|체념"},
  {"단어": "require", "발음": "rikwáiər", "주요뜻": "필요하다|요구하다|규정하다|걸리다|제시하다"},
  {"단어": "reprimand", "발음": "réprəmӕnd", "주요뜻": "견책|꾸짖다|징계"},
  {"단어": "remarkable", "발음": "rimάːrkəbl", "주요뜻": "놀라운|주목할 만한|훌륭한|괄목할 만한|두드러진"},
  {"단어": "rejection", "발음": "ridʒékʃən", "주요뜻": "거부|거절|거부반응"},
  {"단어": "relevant", "발음": "réləvənt", "주요뜻": "관련있는|적절한|관계가 있는|연관된"},
  {"단어": "comparatively", "발음": "kəmpǽrətivli", "주요뜻": "비교적|상대적으로"},
  {"단어": "relatively", "발음": "rélətivli", "주요뜻": "비교적으로|상대적으로|비하여"},
  {"단어": "regulate", "발음": "régjulèit", "주요뜻": "규제하다|조절하다|규정하다"},
  {"단어": "reinstate", "발음": "rìːinstéit", "주요뜻": "복귀시키다|…을 원상태로 회복시키다|본래대로"},
  {"단어": "organization", "발음": "ɔ̀rgən-izéiʃən", "주요뜻": "조직|단체|기구|기관|구성"},
  {"단어": "openly", "발음": "óupənli", "주요뜻": "공개적으로|공공연히|드러내놓고"},
  {"단어": "exclude", "발음": "iksklúːd", "주요뜻": "제외하다|배제하다|금지하다|중단하다|배척하다"},
  {"단어": "observe", "발음": "əbzə́ːrv", "주요뜻": "관찰하다|보다|지키다|준수하다|목격하다"},
  {"단어": "objectivity", "발음": "ὰbdʒiktívəti", "주요뜻": "객관성|객관적인 것|객관"},
  {"단어": "multiply", "발음": "mΛltəplài", "주요뜻": "곱하다|늘리다|증식시키다|증가시키다|번식하다"},
  {"단어": "monetary", "발음": "mάnətèri", "주요뜻": "통화의|금융의|금전의|화폐의|재정의"},
  {"단어": "make an exception of", "주요뜻": "~을 예외로 하다"},
  {"단어": "legislation", "발음": "lèdʒisléiʃən", "주요뜻": "법안|입법|법제|제도|법률"},
  {"단어": "landfill", "발음": "læˈndfiˌl", "주요뜻": "쓰레기 매립지|매립식 쓰레기 처리|매립지"},
  {
    "단어": "lasting",
    "발음": "lǽstiŋ",
    "주요뜻":
        "continuing or enduring without marked change in status or condition or place",
    "메모": "1)영속하는 영구적인 영구 불변의; 오래 견디는 내구력 있는 "
  },
  {"단어": "largely", "발음": "lάːrdʒli", "주요뜻": "주로|대량으로|다량으로"},
  {"단어": "landslide", "발음": "læˈndslaiˌd", "주요뜻": "산사태|사태|압도적 승리"},
  {"단어": "invoke", "발음": "invóuk", "주요뜻": "호소하다|기원하다|빌다"},
  {"단어": "interact", "발음": "íntərӕkt", "주요뜻": "작용하다|소통|교류하다|반응하다|함께하다"},
  {"단어": "intentional", "발음": "inténʃənl", "주요뜻": "의도적인|고의적인"},
  {"단어": "intense", "발음": "inténs", "주요뜻": "강렬한|집중적인|심한|거센"},
  {"단어": "inordinate", "발음": "inɔ́ːrdənət", "주요뜻": "과도한|지나친|불규칙한"},
  {"단어": "infringe", "발음": "infríndʒ", "주요뜻": "침해하다|어기다|위반하다"},
  {"단어": "in addition", "주요뜻": "또한|게다가|이외에도|그뿐 아니라|더하여"},
  {"단어": "inadequate", "발음": "inǽdikwət", "주요뜻": "부족한|부적절한"},
  {"단어": "motivated", "발음": "móutəvèitid", "주요뜻": "…할 의욕이 있는|유발된|적극적인 자세가 있는"},
  {"단어": "void", "발음": "vɔid", "주요뜻": "빈|공허한|쓸모 없는"},
  {"단어": "empty", "발음": "émpti", "주요뜻": "빈|비우다|없는|공허한|무의미한"},
  {"단어": "hollow", "발음": "hάlou", "주요뜻": "공허한|도려내다|우묵해지다"},
  {"단어": "improbable", "발음": "imprάbəbl", "주요뜻": "일어날 성싶지 않은|정말 같지 않은|불가능한"},
  {"단어": "inappropriate", "발음": "ìnəpróupriət", "주요뜻": "부적당한|알맞지 않은|온당치 않은"},
  {"단어": "immunization", "발음": "ìmjunə-zéiʃən", "주요뜻": "예방 접종|면역"},
  {"단어": "impair", "발음": "impέər", "주요뜻": "손상시키다|해치다|손상하다"},
  {"단어": "impatient", "발음": "impéiʃənt", "주요뜻": "참을성 없는|서두르는|초조한|짜증을 내는"},
  {"단어": "famish", "발음": "fǽmiʃ", "주요뜻": "…을 굶주리게 하다|굶주리다|아사하다"},
  {"단어": "facility", "발음": "fəsíləti", "주요뜻": "시설|설비|재능"},
  {"단어": "extinguish", "발음": "ikstíŋgwiʃ", "주요뜻": "진화하다|끄다|소멸시키다"},
  {"단어": "extinct", "발음": "ikstíŋkt", "주요뜻": "멸종한|사라진"},
  {"단어": "external", "발음": "ikstə́ːrnl", "주요뜻": "외부의|대외적인|외관의"},
  {"단어": "extensive", "발음": "iksténsiv", "주요뜻": "광범위한|대규모의|넓은|방대한|포괄적"},
  {"단어": "endeavor", "발음": "indévər", "주요뜻": "노력|시도|실시"},
  {
    "단어": "jeopardize",
    "발음": "dʒépərdàiz",
    "주요뜻": "위험에 빠뜨리다|위태롭게 하다|위협하다|망가뜨리다"
  },
  {"단어": "endanger", "발음": "indéindʒər", "주요뜻": "…을 위험에 빠뜨리다|위태롭게 하다"},
  {"단어": "encounter", "발음": "inkáuntər", "주요뜻": "만나다|마주치다|직면하다|부딪치다|충돌하다"},
  {"단어": "encompass", "발음": "inkΛmpəs", "주요뜻": "…을 둘러싸다|…을 포함하다|포위하다"},
  {"단어": "enclose", "발음": "inklóuz", "주요뜻": "에워싸다|둘러싸다|동봉하다|첨부하다"},
  {"단어": "surround", "발음": "səráund", "주요뜻": "둘러싸다|주변|에워싸다"},
  {"단어": "encircle", "발음": "insə́ːrkl", "주요뜻": "…의 둘레를 돌다|둘러싸다|일주하다"},
  {"단어": "enact", "발음": "inǽkt", "주요뜻": "제정하다|입법하다|시행하다|만들다|규정하다"},
  {"단어": "embezzlement", "발음": "imbézlmənt", "주요뜻": "횡령|착복|유용"},
  {"단어": "disruption", "발음": "disrΛpʃən", "주요뜻": "붕괴|파열|분열"},
  {"단어": "disregard", "발음": "dìsrigάːrd", "주요뜻": "무시하다|외면하다"},
  {"단어": "disposal", "발음": "dispóuzəl", "주요뜻": "처리|처분|폐기"},
  {"단어": "disperse", "발음": "dispə́ːrs", "주요뜻": "흩어지게 하다|퍼뜨리다|흩어지다"},
  {"단어": "dispatch", "발음": "dispǽʧ", "주요뜻": "파견|파병|보내다|급파|배치"},
  {"단어": "dismiss", "발음": "dismís", "주요뜻": "일축하다|무시하다|해고하다|기각하다|각하하다"},
  {"단어": "dismantle", "발음": "dismǽntl", "주요뜻": "폐지하다|해체하다|철거하다|분해하다|없어지다"},
  {"단어": "dislodge", "발음": "dislάdʒ", "주요뜻": "제거하다|몰아내다|숙사에서 나오다"},
  {"단어": "disassemble", "발음": "dìsəsémbl", "주요뜻": "분해되다|해체하다|해산|역어셈블|와해"},
  {"단어": "disapproval", "발음": "dìsəprúːvəl", "주요뜻": "반대|비난|불만|불허"},
  {"단어": "dilute", "발음": "dilúːt", "주요뜻": "희석하다|묽게 하다|약화시키다|누그러뜨리는 |낮추다"},
  {"단어": "deliberation", "발음": "dilìbəréiʃən", "주요뜻": "숙고|심사숙고|토의"},
  {"단어": "deterrence", "발음": "ditə́ːrəns", "주요뜻": "억제|억지|저지"},
  {"단어": "detour", "발음": "díːtuər", "주요뜻": "우회하다|우회로|우회"},
  {"단어": "devastate", "발음": "dévəstèit", "주요뜻": "파괴하다|충격|황폐화시키다|절망|초토화"},
  {"단어": "deviate", "발음": "díːvièit", "주요뜻": "벗어나다|빗나가다|일탈하다"},
  {"단어": "dignity", "발음": "dígnəti", "주요뜻": "존엄|품위|품격|위엄|자존감"},
  {"단어": "exhaust", "발음": "igzɔ́ːst", "주요뜻": "배기|지치다|피곤하다|소모시키다|고갈"},
  {"단어": "deplete", "발음": "diplíːt", "주요뜻": "고갈시키다|다 써버리다|비우다"},
  {"단어": "dependable", "발음": "dipéndəbl", "주요뜻": "신뢰할 수 있는|의존할 수 있는|신뢰할 만한"},
  {"단어": "demoralize", "발음": "dimɔ́ːrəlàiz", "주요뜻": "사기를 꺾다|의기소침"},
  {"단어": "demolish", "발음": "dimάliʃ", "주요뜻": "철거하다|파괴하다|없애다|무너지다|허물다"},
  {"단어": "overdue", "발음": "ouˈvərduˈ", "주요뜻": "연체된|연착한|지급 기한이 지난"},
  {"단어": "delinquent", "발음": "dilíŋkwənt", "주요뜻": "비행의|의무 불이행의|비행 소년"},
  {"단어": "deductible", "발음": "didΛktəbl", "주요뜻": "공제할 수 있는|공제 가능한|공제 금액"},
  {"단어": "subtract", "발음": "səbtrǽkt", "주요뜻": "빼다|공제하다"},
  {"단어": "deduct", "발음": "didΛkt", "주요뜻": "공제하다|빼다|감하다"},
  {"단어": "custody", "발음": "kΛstədi", "주요뜻": "구속|구금|수감|양육권|체포"},
  {"단어": "debris", "발음": "dəbríː", "주요뜻": "잔해|파편|쓰레기|폐기물|조각"},
  {"단어": "deadlock", "발음": "deˈdlaˌk", "주요뜻": "교착 상태|막다른 상태|막다름"},
  {"단어": "convene", "발음": "kənvíːn", "주요뜻": "소집하다|…을 소환하다|회합하다"},
  {"단어": "controversy", "발음": "kάntrəvə̀ːrsi", "주요뜻": "논란|논쟁|문제|갈등|의혹"},
  {"단어": "contrast", "발음": "kəntrǽst｜trάːst", "주요뜻": "대조|대비|차이|대립|대치"},
  {"단어": "contradict", "발음": "kὰntrədíkt", "주요뜻": "모순되다|다르다|부정하다|반박하다"},
  {"단어": "contingency", "발음": "kəntíndʒənsi", "주요뜻": "우연성|우발 사건|우발"},
  {"단어": "contiguous", "발음": "kəntígjuəs", "주요뜻": "인접하는|인접하고 있는|접근하는"},
  {"단어": "contend", "발음": "kənténd", "주요뜻": "주장하다|논쟁하다|싸우다"},
  {"단어": "contagion", "발음": "kəntéidʒən", "주요뜻": "감염|전염|전염병"},
  {"단어": "consulate", "발음": "kάnsəlit", "주요뜻": "영사관|영사의 직|집정 정치"},
  {"단어": "constructive", "발음": "kənstrΛktiv", "주요뜻": "건설적인"},
  {"단어": "consolidate", "발음": "kənsάlədèit", "주요뜻": "통합하다|강화하다|공고해지다|발전|굳히다"},
  {"단어": "consign", "발음": "kənsáin", "주요뜻": "위탁하다|맡기다|탁송하다"},
  {"단어": "conservation", "발음": "kὰnsərvéiʃən", "주요뜻": "보존|보전|보호|절약"},
  {"단어": "consensus", "발음": "kənsénsəs", "주요뜻": "합의|의견|일치|컨센서스"},
  {"단어": "conglomerate", "발음": "kənglάmərit｜-glɔ́m-", "주요뜻": "대기업|재벌|그룹|집단|역암"},
  {"단어": "confrontation", "발음": "kὰnfrəntéiʃən", "주요뜻": "대결|직면|대면"},
  {"단어": "confiscate", "발음": "kάnfəskèit", "주요뜻": "몰수하다|압수하다|징발하다"},
  {"단어": "composition", "발음": "kὰmpəzíʃən", "주요뜻": "구성|작문|작곡|구도|작품"},
  {"단어": "comply", "발음": "kəmplái", "주요뜻": "지키다|따르다|응하다|동의하다"},
  {"단어": "compliment", "발음": "kάmpləmənt｜kɔ́m-", "주요뜻": "칭찬하다|찬사"},
  {"단어": "complete", "발음": "kəmplíːt", "주요뜻": "완성된|완전한|완료하다|마치다|끝내다"},
  {"단어": "compile", "발음": "kəmpáil", "주요뜻": "편집하다|수집하다|작성되다|집계하다|기록하다"},
  {"단어": "competent", "발음": "kάmpətənt", "주요뜻": "유능한|능력이 있는|만족스러운"},
  {"단어": "assure", "발음": "əʃúər", "주요뜻": "확신시키다|보장하다|분명히 …이다|확인하다"},
  {"단어": "assume", "발음": "əsúːm", "주요뜻": "생각하다|가정하다|추측하다|지다|추정하다"},
  {"단어": "assortment", "발음": "əsɔ́ːrtmənt", "주요뜻": "분류|한데 넣은 것|구색"},
  {"단어": "assort", "발음": "əsɔ́ːrt", "주요뜻": "…을 분류하다|어울리다|구색을 갖추다"},
  {"단어": "ambivalence", "발음": "æmbívələns", "주요뜻": "양면 가치|모순|양립"},
  {"단어": "amalgamate", "발음": "əmǽlgəmèit", "주요뜻": "혼합시키다|합동하다|융합하다"},
  {"단어": "allowable", "발음": "əláuəbl", "주요뜻": "허락할 수 있는|무방한|…이 허용되는"},
  {"단어": "alleviate", "발음": "əlíːvièit", "주요뜻": "경감하다|완화하다|덜다"},
  {"단어": "ailing", "발음": "éiliŋ", "주요뜻": "병든|앓고 있는|병약한"},
  {"단어": "aggravate", "발음": "ǽgrəvèit", "주요뜻": "악화시키다|가중시키다|심화시키다|화나게 하다"},
  {"단어": "affix", "발음": "əfíks", "주요뜻": "접사|조사|부착|붙이다|첨가물"},
  {"단어": "advocate", "발음": "ǽdvəkèit", "주요뜻": "옹호하다|주장하다|대변자|변호사"},
  {"단어": "cellular phone", "주요뜻": "휴대폰|휴대 전화|핸드폰|이동전화"},
  {"단어": "pay phone", "주요뜻": "공중 전화", "메모": "1)= Public phone"},
  {
    "단어": "gourmet",
    "발음": "gúərmei",
    "주요뜻": "미식가|식도락가|미식",
    "메모":
        "1)아주 맛있는 음식을 gourmet food \r최고의 식당을 gourmet restaurant gourmet는 음식에 관한 최고의 찬사. 토익에서는 비행기와 관련된 문제에 잘 나오는데 항공사 광고에서 자사가 제공하는 기내 음식을 gourmet meal이라고 표현하는 경우가 많다. \r"
  },
  {"단어": "cuisine", "발음": "kwizíːn", "주요뜻": "요리|음식|식|조리법"},
  {"단어": "chef", "발음": "ʃef", "주요뜻": "요리사|주방장"},
  {"단어": "precipitation", "발음": "prisìpətéiʃən", "주요뜻": "강우|강수량|재촉"},
  {"단어": "damp", "발음": "dæmp", "주요뜻": "찬물을 끼얹다|습기가 있는|물기|축이다"},
  {"단어": "humid", "발음": "hjúːmid", "주요뜻": "습한|습기가 많은|습도가 높은|눅눅한"},
  {"단어": "moist", "발음": "mɔist", "주요뜻": "습한|촉촉한|눈물이 많은"},
  {"단어": "rack", "발음": "ræk", "주요뜻": "짜내다|…걸이|선반|침대"},
  {"단어": "retail price", "주요뜻": "소매 가격|소매가"},
  {"단어": "accommodation", "발음": "əkὰmədéiʃən", "주요뜻": "수용|숙박|숙식|기숙"},
  {"단어": "accommodate", "발음": "əkάmədèit", "주요뜻": "수용하다|맞추다|편의를 도모하다"},
  {"단어": "inflation", "발음": "infléiʃən", "주요뜻": "인플레이션|물가 인상|증가|부풀리기"},
  {"단어": "household", "발음": "háushòuld", "주요뜻": "가구|가정의|가족의|세대"},
  {"단어": "stabilize", "발음": "stéibəlàiz", "주요뜻": "안정화|정상화|유지|억제|진정"},
  {"단어": "fluctuation", "발음": "flΛkʧuéiʃən", "주요뜻": "동요|변동|파동"},
  {"단어": "culinary", "발음": "kjúːlənèri", "주요뜻": "요리의|부엌의|요리용의"},
  {"단어": "nutrition", "발음": "njuːtríʃən", "주요뜻": "영양|식생활|자양분"},
  {"단어": "ingredient", "발음": "ingríːdiənt", "주요뜻": "재료|성분"},
  {"단어": "excessive", "발음": "iksésiv", "주요뜻": "과도한|지나친|엄청난|극단적인"},
  {"단어": "porridge", "발음": "pɔ́ːridʒ", "주요뜻": "포리지|형기|교도소"},
  {"단어": "oblige", "발음": "əbláidʒ", "주요뜻": "…에게 강요하다"},
  {"단어": "obligation", "발음": "ὰbləgéiʃən", "주요뜻": "의무|계약|채무|채권"},
  {"단어": "storytelling", "발음": "stɔ́ːritèliŋ", "주요뜻": "이야기를 하는|거짓말을 하는|이야기하기"},
  {
    "단어": "outnumber",
    "발음": "autnəˈmbər",
    "주요뜻": "…을 수로 압도하다|…에게 수효에서 이기다|…보다수가많다"
  },
  {"단어": "condemn", "발음": "kəndém", "주요뜻": "비난하다|규탄하다|유죄 판결을 내리다|미워하다"},
  {"단어": "denounce", "발음": "dináuns", "주요뜻": "비난하다|비판하다|반대하다|매도하다|파기하다"},
  {"단어": "blame", "발음": "bleim", "주요뜻": "비난하다|...탓하다|책임|나무라다"},
  {"단어": "censure", "발음": "sénʃər", "주요뜻": "비난|비난하다|불신임의 표명"},
  {"단어": "reproach", "발음": "ripróuʧ", "주요뜻": "비난하다|나무라다"},
  {"단어": "optimistic", "발음": "ὰptəmístik", "주요뜻": "낙관적인|긍정적인"},
  {"단어": "cremation", "발음": "kriméiʃən", "주요뜻": "화장|소각|다비"},
  {"단어": "depression", "발음": "dipréʃən", "주요뜻": "우울|침체|불경기|공황|불황"},
  {"단어": "struggle", "발음": "strΛgl", "주요뜻": "투쟁하다|분투하다|애쓰다|싸움|어려움을 겪다"},
  {"단어": "shivering", "발음": "ʃívəriŋ", "주요뜻": "몸의 떨림|전율"},
  {"단어": "apparent", "발음": "əpǽrənt əpέər-", "주요뜻": "분명한|명백한|뚜렷한 |눈에 띄는|특별한"},
  {"단어": "compensation", "발음": "kὰmpənséiʃən", "주요뜻": "보상|보정|배상|보수|보험"},
  {"단어": "slaughter", "발음": "slɔ́ːtər", "주요뜻": "도살|도축|학살하다|살처분|죽이다"},
  {"단어": "aircraft", "발음": "eˈrkræˌft", "주요뜻": "항공기|비행기"},
  {"단어": "quarantine", "발음": "kwɔ́ːrəntìːn", "주요뜻": "검역소|격리|격리하다"},
  {"단어": "pressure", "발음": "préʃər", "주요뜻": "압력|압박|부담|스트레스|기압"},
  {"단어": "continental", "발음": "kὰntənéntl", "주요뜻": "대륙의|유럽의|컨티넨탈"},
  {"단어": "biweekly", "발음": "baiwíːkli", "주요뜻": "격주의|격주 간행물|격주로"},
  {"단어": "enhance", "발음": "inhǽns", "주요뜻": "향상하다|강화하다|증진|개선시키다|높이다"},
  {"단어": "garner", "발음": "gάːrnər", "주요뜻": "…을 모으다"},
  {
    "단어": "under cover of",
    "주요뜻": "틈을 타서  핑계로 ",
    "메모": "1)Under cover of noise I ran out of the office\r소음을 틈타서 나는 사무실을 나왔다"
  },
  {"단어": "run to", "주요뜻": "…의 자력이 있다|…에 넉넉하다|…으로 향하다"},
  {
    "단어": "put over on",
    "주요뜻": "속임수를 쓰다    put it over on person",
    "메모": "1)He tried to put something over her\r그는 그녀를 속이려했다"
  },
  {"단어": "put on", "주요뜻": "입다|쓰다|신다"},
  {"단어": "accuracy", "발음": "ǽkjurəsi", "주요뜻": "정확도|정확|면밀"},
  {"단어": "measurement", "발음": "méʒərmənt", "주요뜻": "측정|치수|두께|크기"},
  {
    "단어": "sure",
    "발음": "ʃuər",
    "주요뜻": "확신하고|확실히|물론|분명히|반드시",
    "메모": "1)확신하는 틀림없는"
  },
  {"단어": "instrumental", "발음": "ìnstrəméntl", "주요뜻": "주된 역할을 하는|기악"},
  {"단어": "enabling", "발음": "inéibliŋ", "주요뜻": "특별한 권능을 부여하는|수권의|합법화하는"},
  {
    "단어": "independently",
    "발음": "ìndipéndəntli",
    "주요뜻": "독립적으로|자유롭게|공식적으로|따로따로"
  },
  {"단어": "implication", "발음": "ìmplikéiʃən", "주요뜻": "의미|영향|연루"},
  {"단어": "deterioration", "발음": "ditìəriəréiʃən", "주요뜻": "악화|저하|악화된 상태"},
  {"단어": "drought", "발음": "draut", "주요뜻": "가뭄|한발|고갈"},
  {"단어": "seasoned", "발음": "síːznd", "주요뜻": "숙련된|경험을 쌓은|잘 마른"},
  {"단어": "license", "발음": "láisəns", "주요뜻": "면허|허가|자격증|번호판|라이센스"},
  {"단어": "application", "발음": "ӕpləkéiʃən", "주요뜻": "적용|응용|활용|애플리케이션|사용"},
  {"단어": "bureau", "발음": "bjúərou", "주요뜻": "…국(局)|기관|책상"},
  {"단어": "overtake", "발음": "ouˈvərteiˌk", "주요뜻": "추월하다|제치다|압도하다|인수하다"},
  {"단어": "decreasing", "발음": "dikríːsiŋ", "주요뜻": "감소하는|차차 적어지는|감소의"},
  {"단어": "carrier", "발음": "kǽriər", "주요뜻": "통신업체|항공사|매개체|화물선|캐리어"},
  {"단어": "rebound", "발음": "ribáund", "주요뜻": "반동|되튐|반향"},
  {"단어": "stagnant", "발음": "stǽgnənt", "주요뜻": "괴어 있는|정체된|불경기의"},
  {"단어": "bulk", "발음": "bʌlk", "주요뜻": "산적 화물선|대부분|대량의|많은|거대한"},
  {"단어": "shipbuilding", "발음": "ʃiˈpbiˌldiŋ", "주요뜻": "조선|건함|조선술"},
  {"단어": "contribute", "발음": "kəntríbjuːt", "주요뜻": "기여하다|공헌하다|도움이 되다|원인|제공하다"},
  {"단어": "enlarge", "발음": "inlάːrdʒ", "주요뜻": "확대하다|확장하다|늘리다|상세하게 설명하다"},
  {"단어": "infrastructure", "발음": "iˌnfrəstrəˈkʧər", "주요뜻": "인프라|기반|시설|사회간접자본"},
  {"단어": "earmark", "발음": "iˈrmaˌrk", "주요뜻": "귀표|귀표를 하다|배당하다"},
  {"단어": "gather", "발음": "gǽðər", "주요뜻": "모이다|수집하다|모임|받다|모여들다"},
  {
    "단어": "proactive",
    "주요뜻":
        "descriptive of any event or stimulus or process that has an effect on events or stimuli or processes that occur subsequently",
    "메모": "1)순향[順向]의 선행 학습에 영향을 받은"
  },
  {
    "단어": "daunt",
    "발음": "dɔːnt",
    "주요뜻": "cause to lose courage",
    "메모": "1)위압하다; [한]풀을 꺾다 기세[기운]를 꺾다 "
  },
  {"단어": "affecting", "발음": "əféktiŋ", "주요뜻": "감동시키는|감격적인|감동적인"},
  {"단어": "phenomenon", "발음": "finάmənὰn", "주요뜻": "현상|장관"},
  {"단어": "extreme", "발음": "ikstríːm", "주요뜻": "극단적인|극심한|극도의|지나친|과격한"},
  {"단어": "frustrating", "발음": "frΛstreitiŋ", "주요뜻": "실망하는 듯한"},
  {"단어": "collapse", "발음": "kəlǽps", "주요뜻": "붕괴하다|무너지다|망하다|쓰러지다|실패"},
  {"단어": "suffer", "발음": "sΛfər", "주요뜻": "겪다|고통을 받다|입다|앓다|고생하다"},
  {"단어": "disrupt", "발음": "disrΛpt", "주요뜻": "방해하다|피해를 주다|중단시키다|혼란에 빠뜨리다|붕괴시키다"},
  {"단어": "blizzard", "발음": "blízərd", "주요뜻": "블리자드|눈보라|폭설"},
  {"단어": "temperature", "발음": "témpərəʧər", "주요뜻": "온도|열|날씨", "메모": "1)온도"},
  {"단어": "abnormal", "발음": "æbnɔ́ːrməl", "주요뜻": "비정상적인|이상한"},
  {
    "단어": "meteorology",
    "발음": "mìːtiərάlədʒi",
    "주요뜻": "predicting what the weather will be",
    "메모": "1)[불가산] 기상학; [특정한 지방의] 기상 "
  },
  {"단어": "reform", "발음": "rifɔ́ːrm", "주요뜻": "개혁|개선|개편|개정|쇄신"},
  {"단어": "equipped", "발음": "ikwiˈpt", "주요뜻": "장착|갖춘|장비|적용|설치"},
  {"단어": "determination", "발음": "ditə̀ːrmənéiʃən", "주요뜻": "결심|결정|편향"},
  {"단어": "announce", "발음": "ənáuns", "주요뜻": "발표하다|밝히다|알리다|공표하다"},
  {"단어": "revitalize", "발음": "rivaiˈtəlaiˌz", "주요뜻": "활성화|활력|되살리다|회복|부양"},
  {"단어": "defense", "발음": "diféns", "주요뜻": "국방|방어|방위|안보|보호"},
  {"단어": "solid", "발음": "sάlid", "주요뜻": "고체의|단단한|확실한|연속된|훌륭한"},
  {"단어": "influential", "발음": "ìnfluénʃəl", "주요뜻": "영향력있는|유력한"},
  {"단어": "headline", "발음": "heˈdlaiˌn", "주요뜻": "머리기사|헤드라인|대서특필하다"},
  {"단어": "cozy", "발음": "kóuzi", "주요뜻": "아늑한"},
  {"단어": "performing", "발음": "pərfɔ́ːrmiŋ", "주요뜻": "실행하는|성취하는|공연하는"},
  {"단어": "domestic", "발음": "dəméstik", "주요뜻": "국내의|내수|가정의|국산의|자국의"},
  {"단어": "fascinating", "발음": "fǽsənèitiŋ", "주요뜻": "매혹적인|재미있는|멋진"},
  {"단어": "purification", "발음": "pjùərəfikéiʃən", "주요뜻": "정화|성작과 성합을 닦는 일|정제"},
  {"단어": "purifier", "발음": "pjúərəfàiər", "주요뜻": "정화 장치|정제자|정화기"},
  {"단어": "installation", "발음": "ìnstəléiʃən", "주요뜻": "설치|시설|전시|임명"},
  {"단어": "boost", "발음": "buːst", "주요뜻": "늘리다|부양|증가하다|향상|활성화하다"},
  {"단어": "showcase", "발음": "ʃouˈkeiˌs", "주요뜻": "전시|소개하다|전시하다"},
  {"단어": "exhibition", "발음": "èksəbíʃən", "주요뜻": "전시|작품|박람회|시범|공연"},
  {
    "단어": "participate",
    "발음": "paːrtísəpèit",
    "주요뜻": "참여하다|참가하다|참석하다|출전하다|동참하다"
  },
  {
    "단어": "storage",
    "발음": "stɔ́ːridʒ",
    "주요뜻": "저장|보관|창고|비축",
    "메모": "1)저장 보관 수용력"
  },
  {"단어": "execute", "발음": "éksikjùːt", "주요뜻": "처형하다|집행하다|만들어내다|발효시키다"},
  {"단어": "roast", "발음": "roust", "주요뜻": "볶다|굽다|불고기|로스트"},
  {
    "단어": "Korean Wave",
    "주요뜻": "한류",
    "메모": "1)한국의 가요 영화 TV 드라마가 해외에서 큰 인기를 얻는 현상을 일컫는 말"
  },
  {"단어": "fan", "발음": "fæn", "주요뜻": "팬|좋아하는|선풍기|부채|부추기다"},
  {"단어": "inform", "발음": "infɔ́ːrm", "주요뜻": "알리다|통보하다|정보를 제공하다"},
  {"단어": "evolve", "발음": "ivάlv", "주요뜻": "진화하다|발전하다|변하다"},
  {"단어": "concerning", "발음": "kənsə́ːrniŋ", "주요뜻": "…에 관하여"},
  {"단어": "various", "발음": "vέəriəs", "주요뜻": "다양한|여러가지의|많은|얼룩덜룩한"},
  {"단어": "partly", "발음": "pάːrtli", "주요뜻": "부분적으로|일부|어느 정도는|얼마간은|조금은"},
  {"단어": "refer", "발음": "rifə́ːr", "주요뜻": "말하다|언급하다|부르다|가리키다|뜻하다"},
  {"단어": "movement", "발음": "múːvmənt", "주요뜻": "운동|움직임|이동|동작|변화"},
  {"단어": "concept", "발음": "kάnsept", "주요뜻": "개념|콘셉트|생각|정신|의미"},
  {"단어": "sweep", "발음": "swiːp", "주요뜻": "휩쓸다|청소하다|압승하다|조사하다"},
  {"단어": "confirm", "발음": "kənfə́ːrm", "주요뜻": "확인하다|확정하다|확신하다|확실히 하다"},
  {"단어": "assistant", "발음": "əsístənt", "주요뜻": "조수|보조|비서|보좌의"},
  {"단어": "appointment", "발음": "əpɔ́intmənt", "주요뜻": "임명|약속|예약"},
  {"단어": "promotion", "발음": "prəmóuʃən", "주요뜻": "증진|진흥|승진|촉진|홍보"},
  {"단어": "judgment", "발음": "dʒΛdʒmənt", "주요뜻": "판단|판결|심판|결정|평가"},
  {"단어": "command", "발음": "kəmǽnd", "주요뜻": "명령하다|지휘하다|사령부|명령을 내리다|지시하다"},
  {"단어": "adopted", "발음": "ədάptid", "주요뜻": "채택된|입양된|도입|사용한|규정"},
  {"단어": "statistics", "발음": "stətístiks", "주요뜻": "통계학|통계|통계 자료"},
  {"단어": "sector", "발음": "séktər", "주요뜻": "부문|분야|업종|영역"},
  {"단어": "mechanical", "발음": "məkǽnikəl", "주요뜻": "기계적인|기술적인|자동적인"},
  {"단어": "semiconductor", "발음": "sèmikəndΛktər", "주요뜻": "반도체"},
  {"단어": "manufacturing", "발음": "mӕnjufǽkʧəriŋ", "주요뜻": "제조업|생산|제작|공산품|제조"},
  {"단어": "desirable", "발음": "dizáiərəbl", "주요뜻": "바람직한"},
  {"단어": "encourage", "발음": "inkə́ːridʒ", "주요뜻": "격려하다|장려하다|권하다|조장하다|촉진하다"},
  {"단어": "session", "발음": "séʃən", "주요뜻": "회의|세션|회기|시간|개정"},
  {
    "단어": "meanwhile",
    "발음": "míːnwàil",
    "주요뜻": "the time between one event process or period and another",
    "메모": "1)한편 반면에"
  },
  {"단어": "ambition", "발음": "æmbíʃən", "주요뜻": "야망|야심|꿈|욕심"},
  {"단어": "negotiation", "발음": "nigòuʃiéiʃən", "주요뜻": "협상|교섭|협의|거래"},
  {"단어": "multilateral", "발음": "mΛltilǽtərəl", "주요뜻": "다변의"},
  {"단어": "resume", "발음": "rizúːm", "주요뜻": "재개하다|다시 시작하다|이력서|경력|되찾다"},
  {"단어": "stall", "발음": "stɔːl", "주요뜻": "중단된|지연되다|교착|노점|칸"},
  {"단어": "skepticism", "발음": "sképtəsìzm", "주요뜻": "회의론|회의|의심"},
  {"단어": "reunify", "발음": "riːjúːnəfài", "주요뜻": "…을 재통합하다|다시 통일하다"},
  {"단어": "propose", "발음": "prəpóuz", "주요뜻": "제안하다|제시하다|제의하다|청혼하다|신청하다"},
  {
    "단어": "denuclearize",
    "발음": "diːnjúːkliəràiz",
    "주요뜻": "…을 비핵화하다|금지하다|…에서 제거하다"
  },
  {"단어": "state", "발음": "steit", "주요뜻": "국가|상태|주|정부|…을 분명히 말하다"},
  {"단어": "briefing", "발음": "bríːfiŋ", "주요뜻": "간단한 보고|상황 설명|전황 요약"},
  {"단어": "establish", "발음": "istǽbliʃ", "주요뜻": "설립하다|수립하다|확립하다|세우다|설정"},
  {"단어": "communist", "발음": "kάmjunist", "주요뜻": "공산주의의|공산당원"},
  {"단어": "property", "발음": "prάpərti", "주요뜻": "특성|부동산|재산|소유|토지"},
  {"단어": "intangible", "발음": "intǽndʒəbl", "주요뜻": "무형의|만질 수 없는|만질 수 없는 것"},
  {"단어": "district", "발음": "dístrikt", "주요뜻": "지역|행정구|지방|지구|구역"},
  {"단어": "appoint", "발음": "əpɔ́int", "주요뜻": "임명하다|지명하다|지정하다"},
  {"단어": "craft", "발음": "kræft", "주요뜻": "공예|만들다|비행기|선박|솜씨"},
  {"단어": "artisan", "발음": "άːrtizən", "주요뜻": "장인|기능공|숙련공"},
  {"단어": "taught", "발음": "tɔːt", "주요뜻": "가르쳤다|배웠다"},
  {"단어": "segment", "발음": "ségmənt", "주요뜻": "분절|부문|부분|분할하다|영역"},
  {"단어": "choreography", "발음": "kɔ̀(ː)riάgrəfi", "주요뜻": "안무|안무법|무용술"},
  {"단어": "sophisticate", "발음": "səfístəkèit", "주요뜻": "세련된 사람|궤변으로 속이다|인텔리"},
  {"단어": "tough", "발음": "tʌf", "주요뜻": "힘든|어려운|강한|터프한|거친"},
  {"단어": "arrangement", "발음": "əréindʒmənt", "주요뜻": "배열|협정|계약|합의|계획"},
  {"단어": "create", "발음": "kriéit", "주요뜻": "만들다|만들어 내다|창조하다|제작하다|형성하다"},
  {"단어": "accompaniment", "발음": "əkΛmpənimənt", "주요뜻": "반주|부속물"},
  {"단어": "refresh", "발음": "rifréʃ", "주요뜻": "신선한|상쾌하게 하다|새로운|시원한| 되살리다"},
  {"단어": "capture", "발음": "kǽpʧər", "주요뜻": "잡다|포착|체포|담다|사로잡다"},
  {"단어": "unique", "발음": "juːníːk", "주요뜻": "독특한|특별한|고유의|특이한|개성적인"},
  {"단어": "reminisce", "발음": "rèmənís", "주요뜻": "추억하다|즐겁게 회상하다|이야기하다"},
  {"단어": "sonorous", "발음": "sənɔ́ːrəs", "주요뜻": "울려 퍼지는|낭랑한|소리를 내는"},
  {"단어": "heritage", "발음": "héritidʒ", "주요뜻": "유산|문화유산|혈통|헤리티지|전통"},
  {"단어": "drawn", "발음": "drɔːn", "주요뜻": "draw의 과거 분사형|긴장된|굳은"},
  {"단어": "urge", "발음": "əːrdʒ", "주요뜻": "촉구하다|해야 한다|요구하다|강조하다|주장하다"},
  {"단어": "belligerent", "발음": "bəlídʒərənt", "주요뜻": "호전적인|교전국|교전국의"},
  {"단어": "peninsula", "발음": "pənínsjulə", "주요뜻": "반도"},
  {"단어": "tension", "발음": "ténʃən", "주요뜻": "긴장|팽팽함|갈등|불안"},
  {"단어": "categorize", "발음": "kǽtəgəràiz", "주요뜻": "…을 분류하다|…을 유별하다|범주로 나누다"},
  {"단어": "status", "발음": "stéitəs", "주요뜻": "상태|지위|신분|현상|사정"},
  {"단어": "torture", "발음": "tɔ́ːrʧər", "주요뜻": "고문|고통을 주다|괴롭히다"},
  {"단어": "colonial", "발음": "kəlóuniəl", "주요뜻": "식민지의|일제 강점기"},
  {"단어": "revelation", "발음": "rèvəléiʃən", "주요뜻": "계시|폭로|공개|드러내는|발현"},
  {"단어": "stroll", "발음": "stroul", "주요뜻": "산책하다|거닐다|배회하다"},
  {"단어": "odd", "발음": "ad", "주요뜻": "이상한|홀수의|특이한|별난"},
  {"단어": "environment", "발음": "inváiərənmənt", "주요뜻": "환경|상황|자연|분위기"},
  {"단어": "emerge", "발음": "imə́ːrdʒ", "주요뜻": "새로운|떠오르다|나타나다|(어려움에서) 벗어나다|명백해지다"},
  {"단어": "arrange", "발음": "əréindʒ", "주요뜻": "배치하다|준비하다|마련하다|정리하다|계획하다"},
  {"단어": "disapproving", "발음": "dìsəprúːviŋ", "주요뜻": "못마땅한|반대|불찬성의"},
  {"단어": "homogenous", "발음": "həmάdʒənəs", "주요뜻": "동종의|동질의"},
  {"단어": "prejudice", "발음": "prédʒudis", "주요뜻": "편견|편향|선입관|손상"},
  {"단어": "perception", "발음": "pərsépʃən", "주요뜻": "인식|지각|생각|이해|시각"},
  {"단어": "rival", "발음": "ráivəl", "주요뜻": "경쟁하는|경쟁자|라이벌|적수|대항하는"},
  {"단어": "firm", "발음": "fəːrm", "주요뜻": "기업|회사|업체|확고한|강경한"},
  {"단어": "bid", "발음": "bid", "주요뜻": "입찰|유치|시도|작별을 고하다|출마"},
  {"단어": "throughout", "발음": "θruːáut", "주요뜻": "…내내|…동안|통하여|완전히|도처에"},
  {"단어": "view", "발음": "vjuː", "주요뜻": "보기|견해|관점|전망|간주하다"},
  {
    "단어": "prolong",
    "발음": "prəlɔ́ːŋ prəlάŋ",
    "주요뜻": "장기화하다|연장하다|지속되다|길어지다|오랫동안"
  },
  {"단어": "post", "발음": "poust", "주요뜻": "…후에|올리다|포스트|기록하다|게시하다"},
  {"단어": "access", "발음": "ǽkses", "주요뜻": "접근|이용|접속|출입"},
  {"단어": "transform", "발음": "trænsfɔˈrm", "주요뜻": "변화시키다|바꾸어 놓다|만들다|변모시키다|전환하다"},
  {"단어": "preservation", "발음": "prèzərvéiʃən", "주요뜻": "보존|보전|관리|보호|저장"},
  {"단어": "review", "발음": "rivjúː", "주요뜻": "재검토|평가|리뷰|비평|복습"},
  {"단어": "recognize", "발음": "rékəgnàiz", "주요뜻": "인정하다|인식하다|알다|알아보다|깨닫다"},
  {"단어": "stride", "발음": "straid", "주요뜻": "보폭|발전|진전|활보|성큼성큼"},
  {"단어": "tremendous", "발음": "triméndəs", "주요뜻": "엄청난|대단한|거대한|많은|소름끼치는"},
  {"단어": "particular", "발음": "pərtíkjulər", "주요뜻": "특정한|특별한|특수한|특히 이|특이한"},
  {"단어": "pursue", "발음": "pərsúː", "주요뜻": "추구하다|추진하다|계속하다|추적하다|쫓다"},
  {"단어": "affect", "발음": "əfékt", "주요뜻": "영향을 주다|작용하다|감염시키다|…체하다"},
  {"단어": "paradigm", "발음": "pǽrədàim", "주요뜻": "패러다임|모형|인식|판도"},
  {"단어": "shift", "발음": "ʃift", "주요뜻": "변화|전환|이동하다|바뀌다|옮기다"},
  {"단어": "development", "발음": "divéləpmənt", "주요뜻": "개발|발전|발달|전개|발생"},
  {"단어": "damaging", "발음": "dǽmidʒiŋ", "주요뜻": "손해를 끼치는|해로운|불리한"},
  {"단어": "modernization", "발음": "mὰdərnizéiʃən", "주요뜻": "현대화|근대화"},
  {"단어": "industrialization", "발음": "indΛstriəlizéiʃən", "주요뜻": "산업화|공업화"},
  {"단어": "belong", "발음": "bilɔ́ːŋ bilάŋ", "주요뜻": "속하다|…의 것이다|소유하다|어울리다"},
  {"단어": "equipment", "발음": "ikwípmənt", "주요뜻": "장비|설비|기기|기술|부품"},
  {
    "단어": "especially",
    "발음": "ispéʃəli es-",
    "주요뜻": "특히|더욱|두드러지게|유달리",
    "메모": "1)특히 유달리 유별나게 각별히 주로"
  },
  {"단어": "terminal", "발음": "tə́ːrmənl", "주요뜻": "터미널|단말기|말기의|끝의"},
  {
    "단어": "baggage",
    "발음": "bǽgidʒ",
    "주요뜻": "수하물|짐|가방",
    "메모": "1)짐 &lt;미&gt; 수화물"
  },
  {"단어": "via", "발음": "váiə víːə", "주요뜻": "통하여|이용한 |의한 |거쳐|경유"},
  {"단어": "amazing", "발음": "əméiziŋ", "주요뜻": "놀라운|대단한|멋진|흥미로운"},
  {"단어": "minority", "발음": "minɔ́ːrəti", "주요뜻": "소수"},
  {"단어": "toe", "발음": "tou", "주요뜻": "발가락|발끝|토|석유환산톤"},
  {"단어": "contestant", "발음": "kəntéstənt", "주요뜻": "경쟁자|논쟁자|경기자"},
  {
    "단어": "fantastic",
    "발음": "fæntǽstik -tikəl",
    "주요뜻": "멋진|환상적인|상상의|이상한|이유없는",
    "메모": "1)환상적인 굉장한 멋진 공상적인 별난"
  },
  {"단어": "talent", "발음": "tǽlənt", "주요뜻": "재능|인재|탤런트|연예인|소질"},
  {"단어": "dishwashing", "발음": "diʃwɔ̀ːʃiŋ -wὰʃ-", "주요뜻": "접시 씻기|접시 씻는"},
  {"단어": "distribution", "발음": "dìstrəbjúːʃən", "주요뜻": "분포|분배|유통|배포|배급"},
  {"단어": "soar", "발음": "sɔːr", "주요뜻": "치솟다|증가하다|급등하다|급증하다|상승하다"},
  {"단어": "specialize", "발음": "spéʃəlàiz", "주요뜻": "전문화하다|특수화하다|전공하다"},
  {"단어": "resident", "발음": "rézədnt", "주요뜻": "주민|거주민|거주하는"},
  {"단어": "heartwarming", "발음": "haˈrtwɔˌrmiŋ", "주요뜻": "마음이 따뜻해지는|만족할 만한|보람 있는"},
  {"단어": "association", "발음": "əsòusiéiʃən -ʃi-", "주요뜻": "협회|단체|연합|관련|조합"},
  {
    "단어": "multicultural",
    "발음": "məˌltikəˈlʧərəl",
    "주요뜻": "여러 문화가 공존하는|복수 문화의|다문화의"
  },
  {"단어": "precious", "발음": "préʃəs", "주요뜻": "소중한|귀중한|중요한|귀여운"},
  {"단어": "proven", "발음": "prúːvən", "주요뜻": "증명된|입증된|밝혀진|판명된"},
  {"단어": "powerhouse", "발음": "pauˈərhauˌs", "주요뜻": "발전소|정력가|강력한 그룹"},
  {"단어": "through", "발음": "θruː", "주요뜻": "통하여|지나서|겪다|통과|사이로"},
  {"단어": "progress", "발음": "prάgres｜próu-", "주요뜻": "발전|진전|진보|진행|과정"},
  {"단어": "corporation", "발음": "kɔ̀ːrpəréiʃən", "주요뜻": "기업|회사|법인"},
  {"단어": "contaminate", "발음": "kəntǽmənèit", "주요뜻": "오염시키다|중독시키다|감염되다|더럽히다"},
  {"단어": "forest", "발음": "fɔ́ːrist", "주요뜻": "숲|산림|삼림"},
  {"단어": "compose", "발음": "kəmpóuz", "주요뜻": "구성하다|작곡하다|만들다|쓰다|조직하다"},
  {"단어": "territory", "발음": "térətɔ̀ːri", "주요뜻": "영토|영역|지역|세력권"},
  {"단어": "though", "발음": "ðou", "주요뜻": "비록 …일지라도|그러나|…임에도 불구하고|…이지만|그래도"},
  {"단어": "delight", "발음": "diláit", "주요뜻": "기쁘게 하다|기쁨|즐겁게 하다|기꺼이 …하다"},
  {"단어": "exotic", "발음": "igzάtik", "주요뜻": "이국적인|이국풍의|외국의"},
  {"단어": "disinfect", "발음": "dìsinfékt", "주요뜻": "소독하다|도청 장치를 제거하다"},
  {"단어": "shoot", "발음": "ʃuːt", "주요뜻": "쏘다|촬영하다|사격하다|발사하다|슛"},
  {
    "단어": "archaeologist",
    "발음": "ὰːrkiάlədʒist",
    "주요뜻": "an anthropologist who studies prehistoric people and their culture",
    "메모": "1)고고학자\r"
  },
  {"단어": "coexist", "발음": "kòuigzíst", "주요뜻": "공존하다|같은 때에 존재하다|평화 공존하다"},
  {"단어": "majority", "발음": "mədʒɔ́ːrəti", "주요뜻": "대부분|다수의|과반수|여당의"},
  {"단어": "crack", "발음": "kræk", "주요뜻": "균열|크랙|금 가다|시작하다|갈라지다"},
  {"단어": "necessary", "발음": "nésəsèri", "주요뜻": "필요한|필수적인|불가피한"},
  {"단어": "postpone", "발음": "poustpóun", "주요뜻": "연기하다|미루다|연장하다|지연시키다|늦추다"},
  {"단어": "faithful", "발음": "féiθfəl", "주요뜻": "충실한|독실한|신의 있는|헌신적인"},
  {
    "단어": "accomplish",
    "발음": "əkάmpliʃ əkΛmpliʃ",
    "주요뜻": "이루어 내다|성취하다|달성하다|완수하다|차지하다"
  },
  {"단어": "shuttle", "발음": "ʃΛtl", "주요뜻": "우주선|우주 왕복선|셔틀|왕복하다"},
  {"단어": "divorce", "발음": "divɔ́ːrs", "주요뜻": "이혼|분리|분열|결별"},
  {"단어": "provision", "발음": "prəvíʒən", "주요뜻": "규정|조항|지원|대비"},
  {"단어": "survey", "발음": "sərvéi", "주요뜻": "조사하다|연구하다|평가하다"},
  {"단어": "readiness", "발음": "rédinis", "주요뜻": "준비|신속"},
  {"단어": "respondent", "발음": "rispάndənt", "주요뜻": "응하는|응답자|피고"},
  {"단어": "conduct", "발음": "kάndʌkt｜kɔ́n-", "주요뜻": "실시하다|수행하다|행동하다|시행하다|지휘하다"},
  {"단어": "improve", "발음": "imprúːv", "주요뜻": "개선하다|향상하다|증진시키다|나아지다|높아지다"},
  {"단어": "improving", "발음": "imprúːviŋ", "주요뜻": "유익한|교화하는|개량하는"},
  {"단어": "volatile", "발음": "vάlətil", "주요뜻": "휘발성의|불안정한|휘발하는"},
  {"단어": "roughly", "발음": "rΛfli", "주요뜻": "대략|거의|거칠게"},
  {"단어": "deteriorate", "발음": "ditíəriərèit", "주요뜻": "악화되다|나쁘게 하다|악화시키다"},
  {"단어": "prediction", "발음": "pridíkʃən", "주요뜻": "예측|추정|예상|예언|전망"},
  {"단어": "research", "발음": "risə́ːrʧ ríːsəːrʧ", "주요뜻": "연구|조사|탐구|탐사"},
  {"단어": "institution", "발음": "ìnstətjúːʃən", "주요뜻": "기관|협회|학회|부처"},
  {"단어": "outlook", "발음": "auˈtlʊˌk", "주요뜻": "전망|경치|견해"},
  {"단어": "negative", "발음": "négətiv", "주요뜻": "부정의|음성의|마이너스의|네거티브|반대의"},
  {"단어": "norm", "발음": "nɔːrm", "주요뜻": "규범|기준|표준"},
  {"단어": "flourishing", "발음": "flə́ːriʃiŋ", "주요뜻": "번영하는|성대한|번창하는"},
  {
    "단어": "fluent",
    "발음": "flúːənt",
    "주요뜻": "smooth and unconstrained in movement",
    "메모": "1)유창한"
  },
  {"단어": "airfare", "발음": "eˈrfeˌr", "주요뜻": "항공 요금|항공 운임"},
  {"단어": "welfare", "발음": "wélfεər", "주요뜻": "복지|후생|보호|행복"},
  {"단어": "fabric", "발음": "fǽbrik", "주요뜻": "직물|천|구조|소재"},
  {
    "단어": "naturalize",
    "발음": "nǽʧərəlàiz",
    "주요뜻": "자연의 법칙에 따라 설명하다|귀화하다|박물학을 연구하다"
  },
  {"단어": "figure", "발음": "fígjər", "주요뜻": "수치|인물|생각하다|피겨|해결하다"},
  {"단어": "transportation", "발음": "trӕnspərtéiʃən", "주요뜻": "교통|운송|이동 수단"},
  {"단어": "housing", "발음": "háuziŋ", "주요뜻": "주택|주거|집"},
  {"단어": "lecture", "발음": "lékʧər", "주요뜻": "강의|강연|연설|설교|훈계"},
  {"단어": "new era", "주요뜻": "새 시대"},
  {"단어": "brand-new", "주요뜻": "새것"},
  {"단어": "newborn", "발음": "nuˈbɔrn", "주요뜻": "거듭 난|부활한|새로 태어난|신생의|갓 태어난"},
  {"단어": "everlasting", "발음": "eˌvərlæˈstiŋ", "주요뜻": "영원한|끝없는|끊임없는"},
  {"단어": "evergreen", "발음": "eˈvərgriˌn", "주요뜻": "상록의|불후의|상록수"},
  {"단어": "carnival", "발음": "kάːrnəvəl", "주요뜻": "카니발|축제|전시회|난장판"},
  {"단어": "entire", "발음": "intáiər", "주요뜻": "전체의|내내|완전한|전반적인"},
  {"단어": "whole", "발음": "houl", "주요뜻": "전체|모든|전|완전히|전부"},
  {"단어": "overall", "발음": "ouˈvərɔˌl", "주요뜻": "전반적으로|전체에 걸친|종합적으로"},
  {"단어": "universal", "발음": "jùːnəvə́ːrsəl", "주요뜻": "보편적인|전 세계의|공통의|우주의|만유인력"},
  {"단어": "celebrate", "발음": "séləbrèit", "주요뜻": "기념하다|축하하다|찬양하다|맞이하다|경축하다"},
  {"단어": "direction", "발음": "dirékʃən dai-", "주요뜻": "방향|지시|길|목표"},
  {"단어": "move", "발음": "muːv", "주요뜻": "움직이다|이동하다|옮기다|이사하다|조치"},
  {"단어": "connection", "발음": "kənékʃən", "주요뜻": "연결|관계|관련|접속|연줄"},
  {"단어": "rhythmic", "발음": "ríðmik -mikəl", "주요뜻": "리듬의|율동적인|주기적인"},
  {"단어": "heart-to-heart", "주요뜻": "마음을 터놓다"},
  {"단어": "lizard", "발음": "lízərd", "주요뜻": "도마뱀|리저드 곶|영국 최남단 지역"},
  {"단어": "squirrel", "발음": "skwə́ːrəl", "주요뜻": "다람쥐"},
  {"단어": "tropical fish", "주요뜻": "열대어"},
  {"단어": "rabbit", "발음": "rǽbit", "주요뜻": "토끼|래빗"},
  {"단어": "turtle", "발음": "tə́ːrtl", "주요뜻": "거북|자라"},
  {"단어": "parrot", "발음": "pǽrət", "주요뜻": "앵무새|되풀이하는 사람"},
  {"단어": "uptight", "발음": "Λptàit", "주요뜻": "긴장한|딱딱한|초조한"},
  {"단어": "relaxed", "발음": "rilǽkst", "주요뜻": "편안한|느긋한|완화된|긴장이 풀린|관대한"},
  {"단어": "easygoing", "발음": "iˈzigouˈiŋ", "주요뜻": "느긋한|너그러운|편안한 걸음걸이의"},
  {"단어": "regional", "발음": "ríːdʒənl", "주요뜻": "지역의|지방의|역내의"},
  {"단어": "religious", "발음": "rilídʒəs", "주요뜻": "종교의|신앙의|독실한"},
  {"단어": "lovable", "발음": "lΛvəbl", "주요뜻": "사랑스러운|정감가는|귀여운"},
  {"단어": "respected", "발음": "rispéktid", "주요뜻": "존경받는|존중|훌륭한|권위|평판높은"},
  {"단어": "beloved", "발음": "bilΛvid -lΛvd", "주요뜻": "가장 사랑하는|소중한|애인"},
  {"단어": "swallow", "발음": "swάlou", "주요뜻": "삼키다|제비|감수하다"},
  {
    "단어": "carry",
    "발음": "kǽri",
    "주요뜻": "휴대하다|싣다|갖다|옮기다|운반하다",
    "메모": "1)나르다 운반하다 전하다 휴대하다 지니다 지탱하다."
  },
  {"단어": "drunken", "발음": "drΛŋkən", "주요뜻": "술 취한|취중의"},
  {"단어": "golden", "발음": "góuldən", "주요뜻": "황금의|골든|가장 좋은|절호의"},
  {"단어": "wooden", "발음": "wúdn", "주요뜻": "목제의|나무의|나무로 만든"},
  {"단어": "vision", "발음": "víʒən", "주요뜻": "비전|시야|보이기|시력|미래"},
  {"단어": "balance", "발음": "bǽləns", "주요뜻": "균형|조화|잔고|안정"},
  {"단어": "product", "발음": "prάdʌkt", "주요뜻": "제품|상품|생산물|결과물|물건"},
  {"단어": "handle", "발음": "hǽndl", "주요뜻": "처리하다|다루다|감당하다|손잡이|만지다"},
  {"단어": "unfamiliar", "발음": "əˌnfəmiˈljər", "주요뜻": "낯선|익숙지 않은|드문"},
  {"단어": "manual", "발음": "mǽnjuəl", "주요뜻": "안내책자|수동의|육체 노동의|규정"},
  {"단어": "Impressionism", "발음": "impréʃənìzm", "주요뜻": "인상주의|인상주의적 표현|인상파"},
  {"단어": "fine art", "주요뜻": "미술|예술|미술품"},
  {"단어": "ease", "발음": "iːz", "주요뜻": "완화하다|쉬움|덜어주다|진정시키다|풀다"},
  {"단어": "palette", "발음": "pǽlit", "주요뜻": "팔레트"},
  {"단어": "painting", "발음": "péintiŋ", "주요뜻": "그림|페인팅|페인트칠"},
  {"단어": "canvas", "발음": "kǽnvəs", "주요뜻": "캔버스|캔버스 천|도화지"},
  {"단어": "rub", "발음": "rʌb", "주요뜻": "문지르다|바르다|쓰다듬다"},
  {"단어": "museum", "발음": "mjuːzíːəm", "주요뜻": "박물관|미술관|기념관"},
  {"단어": "express", "발음": "iksprés", "주요뜻": "표현하다|나타내다|고속의|발표하다|급행"},
  {"단어": "vow", "발음": "vau", "주요뜻": "다짐하다|천명하다|맹세하다|밝히다|단언하다"},
  {"단어": "attack", "발음": "ətǽk", "주요뜻": "공격하다|발작|비난하다|덤벼들다|폭행하다"},
  {"단어": "deceive", "발음": "disíːv", "주요뜻": "속이다|기만하다|현혹시키다|거짓말을 하다"},
  {"단어": "refuse", "발음": "rifjúːz", "주요뜻": "거부하다|거절하다|쓰레기|사절하다"},
  {"단어": "sabotage", "발음": "sǽbətὰːʒ", "주요뜻": "방해|파괴 |사보타주|침투|망치는"},
  {"단어": "demonstrate", "발음": "démənstrèit", "주요뜻": "입증하다|증명하다|시위하다|나타내다|설명하다"},
  {"단어": "captain", "발음": "kǽptin", "주요뜻": "선장|주장|캡틴|육군 대위|경감"},
  {"단어": "boycott", "발음": "bɔ́ikat", "주요뜻": "거부|보이콧|불매|불참|배척하다"},
  {"단어": "in advance", "주요뜻": "미리|사전에|사전에 미리"},
  {"단어": "beforehand", "발음": "bifɔ́ːrhӕnd", "주요뜻": "사전에|미리|그 전부터"},
  {"단어": "apron", "발음": "éiprən", "주요뜻": "앞치마|에이프런|가림막"},
  {"단어": "barrel", "발음": "bǽrəl", "주요뜻": "배럴|통|총신|북"},
  {"단어": "gallon", "발음": "gǽlən", "주요뜻": "갤런|많은"},
  {"단어": "lately", "발음": "léitli", "주요뜻": "최근에|요즘|근래|요새", "메모": "1)요즈음 최근에 근래"},
  {"단어": "recently", "발음": "ríːsntli", "주요뜻": "최근에|얼마전|근래에|요즘에|요즈음"},
  {"단어": "nowadays", "발음": "náuədèiz", "주요뜻": "요즈음|오늘날|현재|최근"},
  {"단어": "unknown", "발음": "ənNouˈn", "주요뜻": "미지의|알려지지 않은|무명의|새로운|파악되지 않은"},
  {"단어": "interdependent", "발음": "iˌntərdipeˈndənt", "주요뜻": "서로 의지하는|상호 의존의"},
  {"단어": "independent", "발음": "ìndipéndənt", "주요뜻": "독립한|무소속의|독자적인|자유의|자주의"},
  {"단어": "dependent", "발음": "dipéndənt", "주요뜻": "의존하는|종속의|부양 가족|의지하는"},
  {"단어": "rye", "발음": "rai", "주요뜻": "호밀|호밀로 만든|신사"},
  {"단어": "oat", "발음": "out", "주요뜻": "귀리로 만든|오트밀"},
  {"단어": "corn", "발음": "kɔːrn", "주요뜻": "옥수수|팝콘|곡식|콘"},
  {"단어": "barley", "발음": "bάːrli", "주요뜻": "보리"},
  {
    "단어": "prefer",
    "발음": "prifə́ːr",
    "주요뜻": "선호하다|좋아하다",
    "메모": "1)오히려 ~을 좋아하다 ~을 더 좋아하다 차라리 ~을 취하다."
  },
  {"단어": "wheat", "발음": "hwiːt", "주요뜻": "밀|소맥"},
  {"단어": "immediately", "발음": "imíːdiətli", "주요뜻": "즉시|…하자마자|바로|곧|직후"},
  {"단어": "solve", "발음": "salv", "주요뜻": "해결하다|풀다|해소하다|처리하다|밝히다"},
  {
    "단어": "return",
    "발음": "ritə́ːrn",
    "주요뜻": "돌아오다|복귀하다|돌아가다|귀국|반환하다",
    "메모": "1)되돌아가다 돌아가다[오다] 회복하다 돌려주다."
  },
  {"단어": "village", "발음": "vílidʒ", "주요뜻": "마을|농촌|시골의|동네|빌리지"},
  {"단어": "nearby", "발음": "nìərbái", "주요뜻": "근처의|인근의|가까운|주변의|근거리"},
  {"단어": "give a toast", "주요뜻": "축배를 들다"},
  {"단어": "marble", "발음": "mάːrbl", "주요뜻": "대리석|구슬|마블"},
  {"단어": "sculptor", "발음": "skΛlptər", "주요뜻": "조각가|조각실자리|조각사"},
  {"단어": "scale", "발음": "skeil", "주요뜻": "규모|척도|등급|비교하다|음계"},
  {"단어": "tile", "발음": "tail", "주요뜻": "타일|기와|조각|바닥재"},
  {"단어": "roof", "발음": "ruːf", "주요뜻": "지붕|옥상|천장"},
  {"단어": "nail", "발음": "neil", "주요뜻": "네일|손톱|못|분석하다|잡다"},
  {"단어": "finger", "발음": "fíŋgər", "주요뜻": "손가락|지적하다"},
  {"단어": "blackboard", "발음": "blǽkbɔ̀ːrd", "주요뜻": "칠판|흑판"},
  {
    "단어": "wedding anniversary",
    "주요뜻": "결혼 기념일",
    "메모":
        "1)결혼 기념일Ex&gt;Today is their fiftieth wedding anniversary. 오늘은 그들의 결혼 50주년이 되는 날이다."
  },
  {"단어": "groom", "발음": "gruːm", "주요뜻": "신랑|…의 털을 깨끗이 하다|깔끔하게 다듬다"},
  {"단어": "bride", "발음": "braid", "주요뜻": "신부"},
  {"단어": "little", "발음": "lítl", "주요뜻": "작은|조금|좀|약간의|어린"},
  {"단어": "wedding", "발음": "wédiŋ", "주요뜻": "결혼|웨딩"},
  {"단어": "mechanic", "발음": "məkǽnik", "주요뜻": "정비사"},
  {"단어": "technician", "발음": "tekníʃən", "주요뜻": "기술자|_사|전문가|직원"},
  {"단어": "excellent", "발음": "éksələnt", "주요뜻": "훌륭한|뛰어난|좋다|우수한|잘했어"},
  {"단어": "engineer", "발음": "èndʒiníər", "주요뜻": "엔지니어|기술자|공학자|운영하다|공병"},
  {"단어": "a kind sales assistant"},
  {"단어": "attendant", "발음": "əténdənt", "주요뜻": "승무원|종업원|참석자|수행원"},
  {"단어": "secretary", "발음": "sékrətèri", "주요뜻": "장관|비서|차관|서기|간사"},
  {"단어": "aide", "발음": "eid", "주요뜻": "측근|보좌관|참모|조력자|부관"},
  {"단어": "servant", "발음": "sə́ːrvənt", "주요뜻": "공무원|서번트|하인|종|노예"},
  {"단어": "helper", "발음": "hélpər", "주요뜻": "도우미|조수"},
  {"단어": "successive", "발음": "səksésiv", "주요뜻": "연속적인|계속적인|연달아|잇단"},
  {"단어": "literary", "발음": "lítərèri", "주요뜻": "문학의|작품|문예|문체|글쓰기"},
  {"단어": "respective", "발음": "rispéktiv", "주요뜻": "각각의|각자의|…에 따라|저마다의|존경스러운"},
  {"단어": "repetitive", "발음": "ripétətiv", "주요뜻": "반복적인|되풀이하는|반복성의"},
  {"단어": "ethic", "발음": "éθik", "주요뜻": "가치 체계|윤리|도덕"},
  {"단어": "ethnic", "발음": "éθnik", "주요뜻": "민족의|혈통의|종족|인종의"},
  {"단어": "literate", "발음": "lítərət", "주요뜻": "읽고 쓸 줄 아는|학식있는|교양 있는"},
  {"단어": "uninterested", "발음": "əniˈntrəstəd", "주요뜻": "무관심한|냉담한|이해 관계가 없는"},
  {"단어": "disinterested", "발음": "disíntərèstid", "주요뜻": "공평한|관심이 없는|사심 없는"},
  {"단어": "historical", "발음": "histɔ́ːrikəl histάrikəl", "주요뜻": "역사의|전통적인"},
  {"단어": "historic", "발음": "histɔ́ːrik histάrik", "주요뜻": "역사적인|사"},
  {"단어": "economic", "발음": "èkənάmik ìːkənάmik", "주요뜻": "경제의|경기의"},
  {"단어": "literal", "발음": "lítərəl", "주요뜻": "글자 그대로의|문자의"},
  {"단어": "generous", "발음": "dʒénərəs", "주요뜻": "관대한|너그러운|후한|마음이 넓은|아량이 있는"},
  {"단어": "liberal", "발음": "líbərəl", "주요뜻": "진보적인|자유로운|자유주의의|개방적인|관대한"},
  {"단어": "a lighthouse keeper", "주요뜻": "등대지기"},
  {"단어": "delighted", "발음": "diláitid", "주요뜻": "기쁜|즐거워하는"},
  {"단어": "lightness", "발음": "láitnis", "주요뜻": "밝기|기민함|우아함"},
  {"단어": "lighting", "발음": "láitiŋ", "주요뜻": "조명|점화|점등"},
  {"단어": "spotlight", "발음": "spaˈtlaiˌt", "주요뜻": "스포트라이트|…을 스포트라이트로 비추다|집중 광선"},
  {"단어": "flashlight", "발음": "flæˈʃlaiˌt", "주요뜻": "손전등|플래시"},
  {"단어": "lighthouse", "발음": "laiˈthauˌs", "주요뜻": "등대"},
  {"단어": "reach", "발음": "riːʧ", "주요뜻": "도달하다|이르다|손을 뻗다|닿다|이루다"},
  {"단어": "suitcase", "발음": "suˈtkeiˌs", "주요뜻": "여행 가방"},
  {"단어": "porter", "발음": "pɔ́ːrtər", "주요뜻": "포터|짐꾼|포르테 |사환"},
  {"단어": "long", "발음": "lɔːŋ", "주요뜻": "긴|오래|오랫동안|장거리의|오랜"},
  {"단어": "forecast", "발음": "fɔˈrkæˌst", "주요뜻": "예상|전망하다|예보|내다보다"},
  {"단어": "anymore", "발음": "ènimɔ́ːr", "주요뜻": "더 이상|이제는|지금은|하나도|다시는"},
  {"단어": "fishbowl", "발음": "fíʃbòul", "주요뜻": "어항|사방에서 빤히 보이는 곳|유치장"},
  {"단어": "breakable", "발음": "bréikəbl", "주요뜻": "깨지기 쉬운|깨지기 쉬운 것|깨뜨릴 수 있는"},
  {"단어": "nonsmoking", "발음": "naˈnsmouˈkiŋ", "주요뜻": "금연의"},
  {"단어": "nonfiction", "발음": "nanfiˈkʃən", "주요뜻": "논픽션|전기·역사·에세이 등|논픽션 작품"},
  {"단어": "nonsense", "발음": "nάnsens", "주요뜻": "말도 안 되는|허튼소리|터무니없는|난센스|무의미"},
  {"단어": "nonprofit", "발음": "nanpraˈfət", "주요뜻": "비영리적인"},
  {"단어": "nonnative", "발음": "nὰnnéitiv", "주요뜻": "본국 태생이 아닌|외국인"},
  {"단어": "nonofficial", "발음": "nὰnəfíʃəl", "주요뜻": "비공식적인|비공식의"},
  {"단어": "most", "발음": "moust", "주요뜻": "가장|대부분의|거의|최고|대다수의"},
  {"단어": "technique", "발음": "tekníːk", "주요뜻": "기법|기술|테크닉|기교|솜씨"},
  {"단어": "nonstop", "발음": "naˌnstaˈp", "주요뜻": "직행 운행|직행 열차|도중에서 멈추지 않는"},
  {"단어": "team leader", "주요뜻": "팀장"},
  {"단어": "editor-in-chief", "주요뜻": "편집국장"},
  {"단어": "president", "발음": "prézədənt", "주요뜻": "대통령|사장|회장|총장|위원장"},
  {"단어": "principal", "발음": "prínsəpəl", "주요뜻": "교장|주된|원금|주요한"},
  {"단어": "director", "발음": "diréktər dai-", "주요뜻": "관리자|감독"},
  {"단어": "chief", "발음": "tʃiːf", "주요뜻": "장관|최고의|추장|국장|주요한"},
  {"단어": "unbeliever", "주요뜻": "회의자|믿지 않는 사람|신앙 없는 사람"},
  {"단어": "unfair", "발음": "ənfeˈr", "주요뜻": "불공정한|부당한|불공평한|억울한"},
  {"단어": "pull", "발음": "pul", "주요뜻": "당기다|끌다|철수시키다|뽑다|빼다"},
  {"단어": "plug", "발음": "plʌg", "주요뜻": "플러그|꽂다|막다|마개"},
  {"단어": "violet", "발음": "váiəlit", "주요뜻": "바이올렛|보라색|제비꽃|수줍어하는"},
  {"단어": "volcano", "발음": "valkéinou", "주요뜻": "화산"},
  {"단어": "vest", "발음": "vest", "주요뜻": "의복을 입다|조끼|셔츠"},
  {"단어": "rainbow", "발음": "réinbòu", "주요뜻": "무지개"},
  {"단어": "remain", "발음": "riméin", "주요뜻": "남다|머무르다|잔존하다|살아남다|체류하다"},
  {
    "단어": "romantic",
    "발음": "roumǽntik",
    "주요뜻": "로맨틱한|연애의|낭만적인|낭만주의의|비현실적인",
    "메모": "1)낭만적인 공상적인 로맨틱한"
  },
  {"단어": "natural", "발음": "nǽʧərəl", "주요뜻": "자연의|천연의|당연한|타고난|정상적인"},
  {"단어": "normal", "발음": "nɔ́ːrməl", "주요뜻": "정상|일반적인|보통의|평범한|일상적인"},
  {"단어": "nun", "발음": "nʌn", "주요뜻": "수녀|여승"},
  {"단어": "nest", "발음": "nest", "주요뜻": "둥지|보금자리|살다"},
  {
    "단어": "try on-e’s best",
    "주요뜻": "최선을 다하다. = do on-e’s best",
    "메모":
        "1)Since the request comes from you I will try my best. \r다름 아닌 당신의 부탁이니까 최선을 다하지요."
  },
  {"단어": "fix", "발음": "fiks", "주요뜻": "고치다|고정하다|해결하다|음식을 준비하다|정하다"},
  {"단어": "damage", "발음": "dǽmidʒ", "주요뜻": "손상|피해|손해|배상금|해치다"},
  {"단어": "take a look", "주요뜻": "~을 훑어보다. = have a look"},
  {"단어": "flash", "발음": "flæʃ", "주요뜻": "플래시|불빛|섬광|번쩍이다|돌발"},
  {
    "단어": "get into",
    "주요뜻": "…에 들어가다|…을 착용하다|입다",
    "메모":
        "1)A bad habit is easy to get into and hard to get rid of. \r나쁜 버릇은 들기는 쉽고 고치기는 어렵습니다"
  },
  {"단어": "get back", "주요뜻": "돌아가다|다시|복귀하다|연락하다|되찾다"},
  {"단어": "shaky", "발음": "ʃéiki", "주요뜻": "흔들리는|비틀거리는|떨리는"},
  {
    "단어": "take sides",
    "주요뜻": "한쪽을 지지하다|한쪽을 편들다|편을 들다",
    "메모":
        "1)I refuse to take sides in this dispute. 이 분쟁에서 나는 어느 편에도 가담하고 싶지 않습니다.\r\r"
  },
  {"단어": "crucial", "발음": "krúːʃəl", "주요뜻": "중요한|결정적인|핵심적인|어려운|굉장한"},
  {
    "단어": "push ~ into a corner",
    "주요뜻": "~를 궁지에 몰아 넣다.",
    "메모": "1)Don’t push me into a [tight] corner. 날 궁지에 몰아넣지 마세요.\r"
  },
  {"단어": "killed on-eself", "주요뜻": "자살하다"},
  {"단어": "owner", "발음": "óunər", "주요뜻": "주인|소유자"},
  {
    "단어": "frozen food",
    "주요뜻": "냉동 식품",
    "메모": "1)I dislike frozen foods. 나는 냉동 음식을 싫어합니다.\r"
  },
  {
    "단어": "on the front page",
    "주요뜻": "제 1면에",
    "메모":
        "1)I saw your photograph on the front page of today's paper. \r오늘 신문 1면에 당신 사진이 나왔더군요."
  },
  {"단어": "effective", "발음": "iféktiv", "주요뜻": "효과적인|효율적인|유효한|유능한|효력있는"},
  {"단어": "brutality", "발음": "bruːtǽləti", "주요뜻": "잔인성|무자비|만행"},
  {"단어": "crime", "발음": "kraim", "주요뜻": "범죄|죄|죄악"},
  {"단어": "horrible", "발음": "hɔ́ːrəbl hɔ́rəbl", "주요뜻": "끔찍한|무서운|소름 끼치는|지독한|참담한"},
  {
    "단어": "keep an eye on",
    "주요뜻": "눈을 떼지 않다|…을 감시하다|…에서 눈을 떼지 않다",
    "메모": "1)Keep an eye on the store while I am away. 저 없는 사이에 가게 좀 잘 보세요.\r"
  },
  {"단어": "violence", "발음": "váiələns", "주요뜻": "폭력|범죄|분쟁|공격|테러"},
  {"단어": "madness", "발음": "mǽdnis", "주요뜻": "광기|미친 짓|열중|정신 착란"},
  {"단어": "victim", "발음": "víktim", "주요뜻": "피해자|희생자|희생양|이재민"},
  {"단어": "guilt", "발음": "gilt", "주요뜻": "죄책감|유죄"},
  {"단어": "commercial", "발음": "kəmə́ːrʃəl", "주요뜻": "상업용의|상업적인|광고|민간의|통상의"},
  {
    "단어": "a channel surfer",
    "주요뜻": "&lt;속어&gt; [TV] 채널을 자주 바꾸는 사람",
    "메모": "1)You’re such a channel surfer! 당신은 채널을 너무 자주 바꿔요!\r"
  },
  {"단어": "such", "발음": "səʧː (강) sΛʧ", "주요뜻": "…같은|그러한|이러한|매우|그렇게"},
  {"단어": "boring", "발음": "bɔ́ːriŋ", "주요뜻": "지루한|따분한|재미없는|지겨운|보링"},
  {"단어": "current", "발음": "kə́ːrənt", "주요뜻": "현재의|전류|현행의|지금의|해류"},
  {"단어": "either", "발음": "íːðər", "주요뜻": "…이라고는 하지만|또한|어느 쪽|역시|양쪽의"},
  {"단어": "project", "발음": "prάdʒekt｜prɔ́dʒ-", "주요뜻": "프로젝트|사업|계획|과제|기획"},
  {"단어": "allocate", "발음": "ǽləkèit", "주요뜻": "할당하다|배분하다|책정하다"},
  {"단어": "disappoint", "발음": "dìsəpɔ́int", "주요뜻": "실망시키다|낙담시키다|기대에 어긋나다|망치다"},
  {"단어": "budget", "발음": "bΛdʒit", "주요뜻": "예산안|예산|재정"},
  {"단어": "turn off", "주요뜻": "끄다|흥미를 잃다|벗어나다|해고하다|만들어내다"},
  {"단어": "interrupt", "발음": "ìntərΛpt", "주요뜻": "방해하다|중단하다|끊다|끼어들다|가로막다"},
  {
    "단어": "in public",
    "주요뜻": "공공|국민|공|대중|공개적으로",
    "메모": "1)He was insulted in public. 그는 여러 사람 앞에서 창피를 당했어요.\r"
  },
  {"단어": "attract", "발음": "ətrǽkt", "주요뜻": "유치하다|끌다|유혹하다|유인하다"},
  {"단어": "UFO", "발음": "júːefóu júːfou", "주요뜻": "미확인 비행 물체|유에프오|비행접시"},
  {"단어": "planet", "발음": "plǽnit", "주요뜻": "행성|유성"},
  {
    "단어": "surf the internet",
    "주요뜻": "인터넷 서핑을 하다.",
    "메모":
        "1)I mainly want to send e-mail surf the Internet. 주로 이메일을 보내고 인터넷 서핑을 합니다.\r"
  },
  {
    "단어": "no on-e",
    "주요뜻": "아무도 ~않다",
    "메모": "1)No on-e is without his faults. 사람치고 결점 없는 사람은 없습니다."
  },
  {"단어": "mainly", "발음": "méinli", "주요뜻": "주로|대부분은|대개는"},
  {"단어": "monthly", "발음": "mΛnθli", "주요뜻": "월간|한달에 한번|매달|한 달의"},
  {"단어": "basic", "발음": "béisik", "주요뜻": "기본적인|기초적인|간단한|근본적인|단순한"},
  {"단어": "cheap", "발음": "ʧiːp", "주요뜻": "싼|저렴한|손쉬운|싸구려의|인색한"},
  {"단어": "design", "발음": "dizáin", "주요뜻": "설계하다|디자인|구현|만들다|계획"},
  {"단어": "quality", "발음": "kwάləti", "주요뜻": "품질|질|특성|자질|고급의"},
  {
    "단어": "compare to",
    "주요뜻": "~와 비교해서",
    "메모": "1)Life is often compared to a voyage. 인생은 흔히 항해에 비유됩니다.\r"
  },
  {
    "단어": "old-fashioned",
    "주요뜻": "시대에 뒤떨어진 구식의",
    "메모":
        "1)They are old-fashioned about marriage. 그들은 결혼에 대해 묵은 생각을 갖고 있습니다.\r"
  },
  {"단어": "mine", "발음": "main", "주요뜻": "내 것|광산|지뢰|채굴하다"},
  {"단어": "sleek", "발음": "sliːk", "주요뜻": "윤기 나는|…을 매끈매끈하게 하다|매끈한"},
  {
    "단어": "must [be]",
    "주요뜻": "~임[함]에 틀림없다 틀림없이 ~일 것이다.",
    "메모":
        "1)He must be at home. I see his car in his garage. \r그는 집에 있는 것이 틀림없어요. 차가 차고에 있는 것을 봐서는."
  },
  {"단어": "guest speaker", "주요뜻": "초청 연사 초대 강사"},
  {"단어": "business", "발음": "bíznis", "주요뜻": "기업|사업|산업|경영|비즈니스"},
  {"단어": "learn", "발음": "ləːrn", "주요뜻": "공부하다|배우다|알다|깨닫다|습득하다"},
  {
    "단어": "down the street",
    "주요뜻": "길을 따라[아래로]",
    "메모":
        "1)The man is wheeling the bins down the street. \r남자가 바퀴 달린 통들을 끌며 길을 가고 있습니다.\r"
  },
  {"단어": "convenience store", "주요뜻": "편의점|일용 잡화 식료품점"},
  {"단어": "clean", "발음": "kliːn", "주요뜻": "깨끗한|청소하다|맑은|치우다|지우다"},
  {"단어": "nice", "발음": "nais", "주요뜻": "좋은|멋진|훌륭한|친절한|반가운"},
  {"단어": "neighborhood", "발음": "néibərhùd", "주요뜻": "동네의|이웃|인근|주변"},
  {"단어": "essay", "발음": "ései", "주요뜻": "에세이|논문|작문|시도하다|수필"},
  {"단어": "speechless", "발음": "spíːʧlis", "주요뜻": "말할 수 없는|무언의|말을 못 하는"},
  {"단어": "high-tech things", "주요뜻": "첨단 기기들"},
  {
    "단어": "be good with",
    "주요뜻": "~를 잘 하다 ~에 손재주가 좋다.",
    "메모":
        "1)You must be good with people and speak at least on-e foreign language. \r사람들에게 친근해야 하고 그리고 최소한 외국어 한 가지를 할 수 있어야 합니다.\r"
  },
  {"단어": "mingle", "발음": "míŋgl", "주요뜻": "어울리다|섞이다"},
  {"단어": "fresh air", "주요뜻": "깨끗한 공기"},
  {"단어": "not to mention", "주요뜻": "…은 말할 것도 없고|더하여"},
  {
    "단어": "go biking",
    "주요뜻": "자전거 타러 가다",
    "메모": "1)Actually she wanted to go biking. 사실 그녀는 자전거를 타러 가고 싶었습니다.\r"
  },
  {
    "단어": "go hiking",
    "주요뜻": "하이킹 [도보 여행]가다",
    "메모": "1)What shall I wear when I go hiking? 하이킹 갈 때 무얼 입어야 할까요?\r\r"
  },
  {"단어": "bored", "발음": "bɔːrd", "주요뜻": "지루한|싫증난"},
  {"단어": "hectic", "발음": "héktik", "주요뜻": "매우 흥분한|몹시 바쁜|소모열"},
  {"단어": "pollution", "발음": "pəlúːʃən", "주요뜻": "오염|공해"},
  {
    "단어": "in moderation",
    "주요뜻": "적당히|알맞게|절도 있게",
    "메모":
        "1)Exercise taken in moderation will do you good. 운동도 알맞게 하면 몸에 이롭습니다.\r\r"
  },
  {"단어": "legal", "발음": "líːgəl", "주요뜻": "법적인|법률상의|합법적인"},
  {"단어": "alcohol", "발음": "ǽlkəhɔ̀ːl", "주요뜻": "알코올|술|주정"},
  {
    "단어": "daily routine",
    "주요뜻": "날마다 하는 일",
    "메모":
        "1)I'm trying to work some exercise into my daily routine. \r운동을 하루 일과 속에 넣으려고 하고 있습니다.\r"
  },
  {"단어": "typical", "발음": "típikəl", "주요뜻": "전형적인|일반적인|평범한|특유한"},
  {
    "단어": "heavy drinking",
    "주요뜻": "폭음 술은 많이 마시는 것",
    "메모": "1)He indulges in heavy drinking. 그는 술을 너무 마십니다"
  },
  {"단어": "drinker", "발음": "dríŋkər", "주요뜻": "마시는 사람|술꾼|급수기"},
  {"단어": "binge", "발음": "bindʒ", "주요뜻": "폭식|진탕 마시고 떠들기|과식하다"},
  {
    "단어": "It’s hard to",
    "주요뜻": "~하기 힘들다 힘겹다.",
    "메모":
        "1)It's hard to see the screen when you're so close to it. \r스크린에 너무 가까이에 앉으면 보기가 힘듭니다.\r"
  },
  {"단어": "both ~ and", "주요뜻": "~와 ~도[양쪽 다] ~뿐만 아니라 또"},
  {"단어": "abroad", "발음": "əbrɔ́ːd", "주요뜻": "해외에|외국에|널리"},
  {"단어": "job", "발음": "dʒab", "주요뜻": "일|직업|직무|일자리|수술"},
  {"단어": "music", "발음": "mjúːzik", "주요뜻": "음악|노래"},
  {"단어": "orchestra", "발음": "ɔ́ːrkəstrə", "주요뜻": "오케스트라|교향악단"},
  {"단어": "Not really", "주요뜻": "그렇진 않아요 별로요.’"},
  {"단어": "explanation", "발음": "èksplənéiʃən", "주요뜻": "설명|해명|해석"},
  {"단어": "example", "발음": "igzǽmpl", "주요뜻": "예|사례|본보기|선례|예제"},
  {"단어": "enough", "발음": "inΛf", "주요뜻": "충분히|충분한|만큼의|매우|족한"},
  {
    "단어": "look at",
    "주요뜻": "보다|살펴보다|쳐다보다|조사하다|관찰하다",
    "메모": "1)He looked at me incredulously.  그는 믿을 수 없다는 듯이 나를 바라보았습니다.\r"
  },
  {
    "단어": "focus on",
    "주요뜻": "[~에] 초점을 맞추다 집중시키다",
    "메모": "1)His eyes did not focus on me. 그는 나를 주시하지 않았어요"
  },
  {"단어": "finish", "발음": "fíniʃ", "주요뜻": "마치다|끝나다|끝|…로 끝내다|졸업하다"},
  {
    "단어": "due",
    "발음": "djuː",
    "주요뜻": "예정인|정당한|때문에|인해|세금",
    "메모": "1)지불 기일이 된 정당한 도착할 예정인 부과금 세금"
  },
  {"단어": "report", "발음": "ripɔ́ːrt", "주요뜻": "보고서|보고|보도|발표하다|알리다"},
  {
    "단어": "It's going to be",
    "주요뜻": "~할 거다 ~하겠는데 ~가 될 것이다’",
    "메모": "1)It sounds like it's going to be a long day. 하루가 무척 길게 느껴지겠네요.\r"
  },
  {"단어": "pretty", "발음": "príti", "주요뜻": "꽤|예쁜|멋진|아름다운|재미있는"},
  {
    "단어": "can’t not make heads or tails of",
    "주요뜻": "~ 전혀 알 수가 없다 이해할 수가 없다.",
    "메모":
        "1)I can’t make heads or tails of the question. 난 그 문제를 전혀 이해하지 못하겠어요.\r"
  },
  {"단어": "clear", "발음": "kliər", "주요뜻": "분명한|명확하다|확실히|명백|투명"},
  {"단어": "calculus", "발음": "kǽlkjuləs", "주요뜻": "계산법|치석|결석"},
  {"단어": "math", "발음": "mæθ", "주요뜻": "수학|계산|수리"},
  {"단어": "subject", "발음": "sΛbdʒikt", "주요뜻": "주제|과목|대상|주어|국민"},
  {"단어": "tease", "발음": "tiːz", "주요뜻": "놀리다|괴롭히다|분간하다"},
  {"단어": "semester", "발음": "siméstər", "주요뜻": "학기"},
  {"단어": "politics", "발음": "pάlətiks", "주요뜻": "정치|정계"},
  {"단어": "ugly", "발음": "Λgli", "주요뜻": "추한|불쾌한"},
  {"단어": "reveal", "발음": "rivíːl", "주요뜻": "드러내다|밝히다|보여주다|말하다|알리다"},
  {"단어": "media", "발음": "míːdiə", "주요뜻": "매스 미디어|매체|medium의 복수형"},
  {"단어": "course", "발음": "kɔːrs", "주요뜻": "과정|코스|수업|강좌|강의"},
  {"단어": "hard", "발음": "haːrd", "주요뜻": "어려운|힘든|열심히|하드|강경한"},
  {"단어": "memorize", "발음": "méməràiz", "주요뜻": "암기하다|…을 기억하다|학습하다"},
  {"단어": "chemistry", "발음": "kéməstri", "주요뜻": "화학|궁합|공감대"},
  {"단어": "earth science", "주요뜻": "지구 과학"},
  {"단어": "textbook", "발음": "teˈkstbʊˌk", "주요뜻": "교과서|교재|교본"},
  {"단어": "laboratory", "발음": "lǽbərətɔ̀ːri", "주요뜻": "실험실|연구실|실습실"},
  {"단어": "experiment", "발음": "ikspérəmənt", "주요뜻": "실험|시험|시도"},
  {"단어": "feeling", "발음": "fíːliŋ", "주요뜻": "느낌|감정|기분|마음|감각"},
  {"단어": "begin", "발음": "bigín", "주요뜻": "시작하다|발생하다|착수하다|출발하다"},
  {"단어": "rung", "발음": "rʌŋ", "주요뜻": "가로장|가로대|바퀴살"},
  {"단어": "bell", "발음": "bel", "주요뜻": "벨|종|신호"},
  {"단어": "in time", "주요뜻": "일찍|늦지 않게|조만간"},
  {
    "단어": "shake a leg",
    "주요뜻": "서두르다|춤추다|출발하다",
    "메모":
        "1)Shake a leg or we won't get there in time for class. 서두르지 않으면 수업시간에 늦겠는걸요.\r"
  },
  {"단어": "flattery", "발음": "flǽtəri", "주요뜻": "아부|아첨"},
  {"단어": "shy", "발음": "ʃai", "주요뜻": "수줍은|부끄러운|꺼리는|내성적인|모자라는"},
  {"단어": "mean", "발음": "miːn", "주요뜻": "의미하다|뜻|수단|평균|진심으로"},
  {
    "단어": "come true",
    "주요뜻": "실현되다|사실이 되다|이행되다",
    "메모":
        "1)Winning the medal was like a dream come true. 메달을 따는 것은 꿈을 이루는 것과 같았습니다.\r\r"
  },
  {"단어": "everywhere", "발음": "eˈvriweˌr", "주요뜻": "어디나|모든 곳|여기저기|도처"},
  {"단어": "mind", "발음": "maind", "주요뜻": "마음|생각|반대하다|정신|명심하다"},
  {"단어": "cafe", "발음": "kæféi", "주요뜻": "카페|커피|PC방"},
  {
    "단어": "move in",
    "발음": "múːvìn",
    "주요뜻": "이입|전입|이사 오다",
    "메모": "1)When do you move in to your new apartment? 새 아파트로 언제 이사하나요?\r"
  },
  {"단어": "around", "발음": "əráund", "주요뜻": "주변에|주위에|돌아다니는|근처에"},
  {"단어": "change", "발음": "ʧeindʒ", "주요뜻": "변화|바꾸다|변경|달라지다|전환하다"},
  {"단어": "for ages", "주요뜻": "오랫동안"},
  {"단어": "each other", "주요뜻": "서로|상호"},
  {"단어": "ruin", "발음": "rúːin", "주요뜻": "망치다|유적|폐허|파멸"},
  {"단어": "surprise", "발음": "sərpráiz", "주요뜻": "놀라다|놀라게 하다|깜짝|놀람|기습하다"},
  {"단어": "except", "발음": "iksépt", "주요뜻": "제외하다|…외에는|…이 없으면|다만|예외로 하다"},
  {"단어": "anyone", "발음": "éniwΛn -wən", "주요뜻": "모든 사람|누군가|아무도"},
  {"단어": "swear", "발음": "swεər", "주요뜻": "욕하다|맹세하다|단언하다"},
  {"단어": "trip", "발음": "trip", "주요뜻": "여행|방문하다|출장|이동|활동"},
  {
    "단어": "just a moment",
    "주요뜻": "잠시 잠깐만",
    "메모": "1)Won’t you come in just for a moment? 잠깐 집에 들르지 않겠어요?\r"
  },
  {"단어": "type", "발음": "taip", "주요뜻": "유형|종류|양식|타입|타자"},
  {"단어": "by the way", "발음": "báiðəwèi", "주요뜻": "그런데|덧붙여 말하는|부언"},
  {"단어": "terrific", "발음": "tərífik", "주요뜻": "대단한|무서운"},
  {"단어": "prepare", "발음": "pripέər", "주요뜻": "준비하다|대비하다|마련하다"},
  {
    "단어": "pop the question",
    "주요뜻": "결혼을 신청하다|구혼하다|청혼하다",
    "메모":
        "1)I’m going to take her to the place where I popped the question. \r그녀를 내가 청혼한 장소에 데려 가려고요."
  },
  {"단어": "special", "발음": "spéʃəl", "주요뜻": "특별한|특수한|특이한|임시의|스페셜"},
  {"단어": "third", "발음": "θəːrd", "주요뜻": "3번째|3분의 1"},
  {
    "단어": "well-behaved",
    "주요뜻": "행동거지가 얌전한",
    "메모":
        "1)They believe that Monday boys are quiet and well-behaved. \r그들은 월요일에 태어난 아이들은 조용하고 품행이 바르다고 믿습니다."
  },
  {
    "단어": "lots of",
    "주요뜻": "구어&gt; 많은 = a lot of lots and lots of a good lot of",
    "메모": "1)There is nothing to see but lots of people. 구경거리는 없고 맨 사람뿐입니다.\r"
  },
  {"단어": "quiet", "발음": "kwáiət", "주요뜻": "조용히|고요한|평화로운|침묵한|차분한"},
  {"단어": "childhood", "발음": "ʧáildhùd", "주요뜻": "유아기|어린 시절|소아기|아동기|유년기"},
  {"단어": "husband", "발음": "hΛzbənd", "주요뜻": "남편"},
  {
    "단어": "be supposed to",
    "주요뜻": "~하기로 되어 있다 ~해서는 안 된다.",
    "메모":
        "1)Let’s wait because he is supposed to arrive at 7. \r그가 7시에 도착할 터이니 기다려 보도록 하죠.\r"
  },
  {
    "단어": "live in",
    "발음": "lívìn",
    "주요뜻": "살다|사는 사람들|생활하다|살아가다|거주하다",
    "메모":
        "1)Savage tribes still live in some parts of the world. \r아직도 세계의 일부 지역에는 미개 부족이 살고 있습니다."
  },
  {
    "단어": "for a while",
    "주요뜻": "잠깐 잠시 동안",
    "메모": "1)He was stunned by the news for a while. 그는 그 소식을 듣고 잠시 어리둥절했습니다.\r"
  },
  {"단어": "somewhere", "발음": "sΛmhwεər", "주요뜻": "어딘가에|어떤 곳|대략|언젠가"},
  {"단어": "Nothing serious", "주요뜻": "심각한 건 아니예요 아무것도 아니예요.’ 의 표현"},
  {"단어": "fill", "발음": "fil", "주요뜻": "채우다|가득하다|가득 차다|메우다|신청서를 작성하다"},
  {"단어": "pharmacy", "발음": "fάːrməsi", "주요뜻": "약국|약품|약학|의약|제약학"},
  {"단어": "prescription", "발음": "priskrípʃən", "주요뜻": "처방"},
  {"단어": "shot", "발음": "ʃat", "주요뜻": "발사|촬영|시도|슛|치다"},
  {"단어": "slowly", "발음": "slóuli", "주요뜻": "천천히|느리게|점점|완만하게"},
  {
    "단어": "keep coughing",
    "주요뜻": "콜록콜록 기침을 하다.",
    "메모": "1)I have a fever and keep coughing. 열이 조금 있고 기침을 계속 해요.\r"
  },
  {"단어": "have a fever", "주요뜻": "열이 나다 몸이 덥다. =have a temperature"},
  {"단어": "I'm afraid", "주요뜻": "말씨를 부드럽게 하는 데 쓰여서 ‘죄송하지만 유감이지만’ 의 표현"},
  {"단어": "describe", "발음": "diskráib", "주요뜻": "묘사하다|설명하다|표현하다|기술하다|그리다"},
  {
    "단어": "right away",
    "주요뜻": "곧바로|즉시|당장|금방|곧장",
    "메모": "1)곧 지체하지 않고Ex&gt;I'll take care of it right away. 지금 바로 처리할게요."
  },
  {"단어": "visit", "발음": "vízit", "주요뜻": "방문하다|가다|찾다|오다|체류하다"},
  {"단어": "hospitalize", "발음": "hάspitəlàiz", "주요뜻": "…을 입원시키다|병원 치료하다"},
  {
    "단어": "break on-e’s leg",
    "주요뜻": "다리를 부러뜨리다.",
    "메모":
        "1)He slipped down the ladder and broke his leg. \r그는 사닥다리에서 미끄러져 떨어져서 다리가 부러졌습니다."
  },
  {"단어": "remember", "발음": "rimémbər", "주요뜻": "기억하다|생각하다|잊지 않는다|상기하다"},
  {"단어": "exactly", "발음": "igzǽktli", "주요뜻": "정확히|바로|그렇소|딱|확실히"},
  {"단어": "migraine", "발음": "máigrein", "주요뜻": "편두통"},
  {"단어": "indigestion", "발음": "ìndidʒésʧən ìndaidʒésʧən", "주요뜻": "소화 불량|위약|미숙"},
  {"단어": "stomach", "발음": "ˈstəmək", "주요뜻": "위장|배|뱃속|복부|긴장"},
  {"단어": "pain", "발음": "pein", "주요뜻": "통증|고통|진통|아프다|괴로움"},
  {"단어": "wonder", "발음": "wΛndər", "주요뜻": "궁금하다|이상한|놀라다|경이로운|의심하다"},
  {"단어": "suddenly", "발음": "sΛdnli", "주요뜻": "갑자기|순식간에"},
  {"단어": "uncomfortable", "발음": "ənkəˈmfərtəbəl", "주요뜻": "불편한|민감한|불쾌감을 주는"},
  {
    "단어": "take some medicine",
    "주요뜻": "약을 좀 복용하다.",
    "메모":
        "1)I thinks Jina should take some medicine. 난 지나가 약을 좀 먹어야 한다고 생각해요.\r\r"
  },
  {
    "단어": "get some rest",
    "주요뜻": "휴식을 좀 취하다.",
    "메모": "1)You ought to go home and get some rest. 당신은 집에 가서 좀 쉬어야 해요.\r"
  },
  {
    "단어": "had better",
    "메모":
        "1)I think you'd better not study so late at night. 밤에 너무 늦게 공부하지 않는 게 좋겠어요.\r"
  },
  {"단어": "serious", "발음": "síəriəs", "주요뜻": "심각한|진지한|정말|중대한|위험한"},
  {"단어": "terrible", "발음": "térəbl", "주요뜻": "끔찍한|무서운|좋지 않은|엄청난|약한"},
  {
    "단어": "have a cold",
    "주요뜻": "감기에 걸리다. = catch a cold",
    "메모":
        "1)When we have a cold we blow our noses very often. 감기가 들면 코를 자주 풉니다.\r"
  },
  {"단어": "happen", "발음": "hǽpən", "주요뜻": "일어나다|벌어지다|발생하다|생기다|우연히 …하다"},
  {"단어": "cold", "발음": "kould", "주요뜻": "추운|감기|추위|차가워진|콜드의"},
  {
    "단어": "get sick",
    "주요뜻": "병에 걸리다",
    "메모": "1)A baby gets sick easily. 아기는 병에 걸리기 쉽습니다.\r"
  },
  {"단어": "sneeze", "발음": "sniːz", "주요뜻": "재채기하다"},
  {"단어": "for", "발음": "fər; fɔ́ːr", "주요뜻": "…을 위하여|…을 기념하여|…용의"},
  {"단어": "ankle", "발음": "ǽŋkl", "주요뜻": "발목|복사뼈"},
  {"단어": "twist", "발음": "twist", "주요뜻": "왜곡하다|비틀다|새로운 방식|삐다|트위스트 춤"},
  {"단어": "crutch", "발음": "krʌʧ", "주요뜻": "목발|버팀목|…을 버티다"},
  {"단어": "bear", "발음": "bεər", "주요뜻": "곰|부담하다|참다|맺다"},
  {"단어": "wish", "발음": "wiʃ", "주요뜻": "바라다|소원|…좋겠어|…싶다|기원하다"},
  {"단어": "stressful", "발음": "strésfəl", "주요뜻": "긴장이 많은|스트레스가 많은|긴장을 일으키는"},
  {
    "단어": "get high marks",
    "주요뜻": "높은 점수를 얻다.",
    "메모": "1)She got high marks on the test. 그녀는 시험에서 높은 점수를 받았습니다.\r"
  },
  {"단어": "wrestle", "발음": "résl", "주요뜻": "레슬링|씨름하다|싸우다|빼앗다"},
  {"단어": "memory", "발음": "méməri", "주요뜻": "기억|메모리|추억|추모|유산"},
  {"단어": "bet", "발음": "bet", "주요뜻": "내기|걸다|틀림없이|베팅|단언하다"},
  {"단어": "forget", "발음": "fərgét", "주요뜻": "잊다|망각하다|깜빡하다|무시하다|빼놓다"},
  {"단어": "never", "발음": "névər", "주요뜻": "결코|절대|전혀|설마"},
  {"단어": "blabbermouth", "주요뜻": "입이 싼 사람|수다쟁이"},
  {
    "단어": "make fun of",
    "주요뜻": "놀리다|비웃다|조롱|농담하다|비하",
    "메모": "1)Don't make fun of me OK? 나한테 장난 좀 치지 마요 알겠어요?\r\r"
  },
  {"단어": "deep pockets", "주요뜻": "충분한 자력 강력한 자금원"},
  {
    "단어": "a few",
    "주요뜻": "몇|소수|일부분|약간|수십 수백",
    "메모": "1)A few minutes would be all right. 몇 분 정도는 괜찮습니다.\r"
  },
  {"단어": "bother", "발음": "bάðər", "주요뜻": "괴롭히다|성가시게 하다|신경쓰이다|귀찮게 하다|걱정하다"},
  {"단어": "excuse", "발음": "ikskjúːz", "주요뜻": "변명|핑계|이유|변명이 되다|구실"},
  {"단어": "unbelievable", "발음": "əˌnbəliˈvəbəl", "주요뜻": "믿을 수 없는|믿기 어려운|놀랄만한"},
  {"단어": "dream", "발음": "driːm", "주요뜻": "꿈|꿈꾸다|상상하다|드림|희망"},
  {"단어": "pleased", "발음": "pliːzd", "주요뜻": "기쁜|만족스러운|좋아하는|즐거운|반가운"},
  {"단어": "imagine", "발음": "imǽdʒin", "주요뜻": "상상하다|생각하다|짐작하다"},
  {"단어": "interview", "발음": "íntərvjùː", "주요뜻": "인터뷰|면접|면담|회견"},
  {"단어": "because", "발음": "bikɔ́ːz bikΛz", "주요뜻": "…때문에|…하다고 해서|왜냐하면"},
  {"단어": "hire", "발음": "haiər", "주요뜻": "고용하다|채용하다|뽑다|사람을 쓰다|빌리다"},
  {"단어": "moment", "발음": "móumənt", "주요뜻": "순간|지금|때|잠깐|기회"},
  {"단어": "happy", "발음": "hǽpi", "주요뜻": "행복한|기쁜|만족한|즐거운|축하하다"},
  {
    "단어": "catch",
    "발음": "kæʧ",
    "주요뜻": "잡다|받다|적발하다|체포하다|걸리다",
    "메모": "1)붙들다 [붙]잡다 쥐다 발견하다 [병에] 걸리다 [기차 등을] 잡아타다."
  },
  {
    "단어": "turn on",
    "주요뜻": "작동|등돌리다|켜지다|틀다|흥분시키다",
    "메모": "1)He turned on me with an angry look. \r그는 무서운 기세로 나에게 대들었어요"
  },
  {"단어": "just", "발음": "dʒʌst", "주요뜻": "것만 |그냥|단지|방금|그저"},
  {
    "단어": "take it easy",
    "주요뜻": "settle into a comfortable sitting position",
    "메모": "1)여유롭다 한가하다 서두르지 않다"
  },
  {
    "단어": "by myself",
    "주요뜻": "나 혼자 힘으로 나 혼자서",
    "메모": "1)don't want to stay here by myself.  \r혼자 여기 있기 싫어요."
  },
  {"단어": "place", "발음": "pleis", "주요뜻": "곳|장소|지역|놓다|공간"},
  {"단어": "hang out", "주요뜻": "놀다|어울리다|가다|보내다|만나다"},
  {"단어": "hangout", "발음": "hæˈŋauˌt", "주요뜻": "단골로 가는 곳|아지트|저속한 오락장"},
  {"단어": "favorite", "발음": "féivərit", "주요뜻": "좋아하는|마음에 드는|우승 후보|인기 있는"},
  {"단어": "strange", "발음": "streindʒ", "주요뜻": "이상한|낯선|모르는|기이한|묘한"},
  {
    "단어": "check in",
    "주요뜻": "확인|체크인|투숙하다|등록하다|짐을 부치다",
    "메모":
        "1)투숙하다 탑승 수속을 하다 수속하여 [하물 등을] 맡기다. &lt;구어&gt; 출근하다.Ex&gt;Passengers can check in their baggage at the curb and go directly to the departure gate. 승객들은 차에서 내리자마자 짐을 부치고 곧바로 탑승구로 갈 수 있습니다."
  },
  {
    "단어": "any",
    "발음": "əni(강) éni",
    "주요뜻": "어떤|전혀|어느|아무|누군가",
    "메모": "1)얼마간의 어떤[누구] 하나의 어떠한 ~이라도 조금도 아무 것도"
  },
  {"단어": "pentagon", "발음": "péntəgὰn", "주요뜻": "5각형|5변형|국방부"},
  {
    "단어": "quickly",
    "발음": "kwíkli",
    "주요뜻": "빨리|빠른|신속히|급속히|금방",
    "메모": "1)빨리 속히 신속히"
  },
  {
    "단어": "get on",
    "주요뜻": "말하다|타다|일어나다|오르다|무릎 꿇다",
    "메모":
        "1)[버스 등에] 타다 승차하다 [일이] 진척되다 [시간이] 지나다 계속하다 [옷을] 입다.Ex&gt;The man is about to get on the elevator. 남자가 엘리베이터에 타려고 합니다."
  },
  {
    "단어": "downtown",
    "발음": "dauˈntauˈn",
    "주요뜻": "도심지|시내|다운타운|중심지|번화가",
    "메모": "1)도심지 상가 중심가"
  },
  {"단어": "first class", "주요뜻": "일등석|일류|특급|수석", "메모": "1)일등석"},
  {
    "단어": "get off",
    "주요뜻": "내리다|마치다|제거하다",
    "메모":
        "1)[차에서] 내리다 하차하다 시작하다 벗어나다 퇴근하다 그만두다 [옷을] 벗다. [반지를] 뽑다.Ex&gt;I can get on a block from my house and get off across from my office. 집에서 한 블록 떨어진 곳에서 타면 사무실 맞은편에서 내립니다."
  },
  {
    "단어": "something else",
    "주요뜻": "다른 것|무언가|또|새로운|특별한",
    "메모":
        "1)어떤 다른 것 &lt;구어&gt; 각별히 멋진 것[사람]Ex&gt;If the animals can't find something else to eat they will die. 만약에 동물이 다른 먹을 것을 발견하지 못한다면 그들은 죽을 것입니다."
  },
  {
    "단어": "announcement",
    "발음": "ənáunsmənt",
    "주요뜻": "발표|말하다|성명|밝히다|공지",
    "메모": "1)공고 발표 공표"
  },
  {
    "단어": "miss",
    "발음": "mis",
    "주요뜻": "놓치다|그리워하다|미스|실종되다|빼먹다",
    "메모": "1)놓치다 빗맞히다 빠뜨리다 빗나가다 그리워하다."
  },
  {
    "단어": "even so",
    "주요뜻": "그렇기는 하나|그렇다 하더라도|과연 그렇소",
    "메모":
        "1)비록 그렇다 하더라도Ex&gt;Even so you should try to take a break later in the afternoon.  그래도 이따가 오후에 좀 쉬도록 해요."
  },
  {
    "단어": "directly",
    "발음": "diréktli dai-",
    "주요뜻": "직접적으로|곧바로|곧장|똑바로|일직선으로",
    "메모": "1)곧장 똑바로 직접[적]으로 즉시로"
  },
  {"단어": "hour", "발음": "auər", "주요뜻": "시간|1시간", "메모": "1)한 시간 시각"},
  {"단어": "more than", "주요뜻": "이상으로|더|보다|넘는|전부터", "메모": "1)~[보다] 이상의[많은]"},
  {
    "단어": "station",
    "발음": "stéiʃən",
    "주요뜻": "정거장|역|방송국|기지|주둔하다",
    "메모": "1)위치 정거장 [관청 시설 등의] 서"
  },
  {"단어": "far", "발음": "faːr", "주요뜻": "먼|훨씬|크게|많은|너무", "메모": "1)멀리 훨씬 무척 아주"},
  {
    "단어": "go back",
    "주요뜻": "되돌아가다|돌아가다|회고하다",
    "메모":
        "1)되돌아가다 거슬러 올라가다 회고하다.Ex&gt;They happily go back to their house. 그들은 행복하게 집으로 돌아가고 있어요."
  },
  {
    "단어": "must",
    "발음": "məst; (강) mΛst",
    "주요뜻": "…해야 하다|…일 것이다|반드시 …하다|필요한|…임에 틀림없다",
    "메모": "1)~해야만 하다 ~하지 않으면 안 되다 ~임[함]에 틀림없다 반드시 ~하다"
  },
  {
    "단어": "wrong",
    "발음": "rɔ́ːŋ",
    "주요뜻": "잘못된|틀린|문제|나쁜|옳지 않은",
    "메모": "1)나쁜 부정한 그릇된 틀린 고장난"
  },
  {
    "단어": "the right way",
    "주요뜻": "정도|바른 길|적절한 방법",
    "메모":
        "1)옳은 길 정도 가장 효과적인 방법 바르게 적절히Ex&gt;Can you tell me if I'm going the right way for the airport? 이 길이 공항 가는 길 맞나요?"
  },
  {
    "단어": "officer",
    "발음": "ɔ́ːfisər",
    "주요뜻": "경찰관|장교|담당관|관리|요원",
    "메모": "1)공무원 관리 장교 경관"
  },
  {
    "단어": "leave",
    "발음": "liːv",
    "주요뜻": "떠나다|남기다|맡기다|출발하다",
    "메모": "1)떠나다 지나다 출발하다."
  },
  {
    "단어": "only",
    "발음": "óunli",
    "주요뜻": "뿐이다|유일하게|유일한|불과|단지",
    "메모": "1)유일한 단지 ~뿐인 단지 오직"
  },
  {
    "단어": "book",
    "발음": "buk",
    "주요뜻": "책|도서|저서|서적|예약하다",
    "메모": "1)책 권 편 기입하다 예약하다."
  },
  {
    "단어": "gate",
    "발음": "geit",
    "주요뜻": "게이트|문|입구|탑승구|개찰구",
    "메모": "1)대문 출입문 [공항의] 탑승구"
  },
  {"단어": "lobby", "발음": "lάbi", "주요뜻": "로비|압력 단체|공작하다", "메모": "1)로비 [현관의] 홀"},
  {
    "단어": "bar",
    "발음": "baːr",
    "주요뜻": "바|술집|막대|판매대",
    "메모": "1)막대기 막대기 모양의 것 술집 바"
  },
  {
    "단어": "yet",
    "발음": "jet",
    "주요뜻": "아직|그러나|하지만|그런데도|여전히",
    "메모": "1)부정문에서 아직 [~않다] 아직[지금]까지는 [~않다]의 뜻으로 쓰입니다."
  },
  {
    "단어": "plan",
    "발음": "plæn",
    "주요뜻": "계획하다|예정|플랜|구상|의도",
    "메모": "1)계획 플랜 안 도면 계획하다 궁리하다."
  },
  {
    "단어": "come back",
    "주요뜻": "돌아오다|다시|복귀하다|재기하다|컴백하다",
    "메모":
        "1)돌아오다 회복하다 복귀하다.Ex&gt;I’ll come back before the sunset. 일몰 전까지 돌아올게요."
  },
  {
    "단어": "hope",
    "발음": "houp",
    "주요뜻": "희망하다|바라다|기대하다|…하면 좋겠다|소망하다",
    "메모": "1)희망 소망 바람 희망을 가지다 기대하다 바라다."
  },
  {"단어": "dangerous", "발음": "déindʒərəs", "주요뜻": "위험한", "메모": "1)위험한 위태로운"},
  {
    "단어": "might",
    "발음": "mait",
    "주요뜻": "...할 수 있다|...할지도 모른다|...지도 모른다",
    "메모": "1)불확실한 추측을 나타내어 ‘~할지[일지]도 모르다.’ 로 쓰이는 경우가 있습니다."
  },
  {
    "단어": "then",
    "발음": "ðen",
    "주요뜻": "그 이후에|그렇다면|그 당시의|그래서|게다가",
    "메모": "1)그 때에 그 다음에 그리고 나서"
  },
  {
    "단어": "alone",
    "발음": "əlóun",
    "주요뜻": "혼자|홀로|다만 …뿐이다|고립하여",
    "메모": "1)홀로 다만 ~만 ~뿐 홀로"
  },
  {
    "단어": "guess",
    "발음": "ges",
    "주요뜻": "…라고 생각하다|…인 것 같다|추측하다|맞히다|짐작하다",
    "메모": "1)짐작하다 추측하다 추정하다"
  },
  {"단어": "weekend", "발음": "wiˈkeˌnd", "주요뜻": "주말", "메모": "1)주말"},
  {
    "단어": "athletic",
    "발음": "æθlétik",
    "주요뜻": "운동의|선수의|체육의|경기의|건강한",
    "메모": "1)[운동] 경기의 체육의 운동 선수용의"
  },
  {
    "단어": "work out",
    "주요뜻": "되다|알다|운동하다|해결하다|이끌어내다",
    "메모":
        "1)빠져나가다 [일이] 잘 되어 가다 [문제가] 풀리다 [권투 선수가] 연습하다 훈련하다 운동하다 제거하다 산출하다.Ex&gt;You’d better work out. 운동 좀 하셔야겠습니다."
  },
  {"단어": "comedy", "발음": "kάmədi", "주요뜻": "코미디|희극", "메모": "1)희극 코메디"},
  {
    "단어": "watch",
    "발음": "waʧ",
    "주요뜻": "보다|지켜보다|관람하다|시계|관찰하다",
    "메모": "1)지켜보다 주시하다 주목[관찰] 하다"
  },
  {"단어": "Olympic", "발음": "əlímpik", "주요뜻": "올림픽"},
  {
    "단어": "select",
    "발음": "silékt",
    "주요뜻": "선택하다|선발하다|고르다|선별하다|엄선된",
    "메모": "1)고르다 선택하다 선발하다."
  },
  {"단어": "sport", "발음": "spɔːrt", "주요뜻": "스포츠|체육|운동|장난", "메모": "1)스포츠 운동 경기"},
  {
    "단어": "match",
    "발음": "mæʧ",
    "주요뜻": "경기|어울리다|성냥|짝|필적하다",
    "메모": "1)어울리는 것[사람] 경쟁 상대 경기 시합"
  },
  {
    "단어": "rain check",
    "주요뜻": "다음 기회|우천 교환권|초대의 순연|다른 기회|구입 예약권",
    "메모":
        "1)우천 교환권 후일의 약속 초대의 연기Ex&gt;Can you give me a rain check on that? 다음 기회로 미룰 수 있을까요?"
  },
  {
    "단어": "interesting",
    "발음": "íntərəstiŋ -tərèst-",
    "주요뜻": "흥미로운|재미있는|놀라운",
    "메모": "1)흥미있는 재미있는"
  },
  {
    "단어": "difference",
    "발음": "dífərəns",
    "주요뜻": "차이|변화|다른점|차액|구별",
    "메모": "1)다름 차이[점] 차 차액"
  },
  {
    "단어": "explain",
    "발음": "ikspléin",
    "주요뜻": "설명하다|말하다|말이 되다|해명하다|해석하다",
    "메모": "1)설명하다 해석하다."
  },
  {
    "단어": "much",
    "발음": "mʌʧ",
    "주요뜻": "훨씬|매우|많은|크게|대부분",
    "메모": "1)[불가산 명사 앞에서] 많은 다량의 심한"
  },
  {
    "단어": "understand",
    "발음": "Λndərstǽnd",
    "주요뜻": "이해하다|알다|깨닫다|납득하다",
    "메모": "1)이해하다 알다 깨닫다."
  },
  {
    "단어": "row",
    "발음": "rou",
    "주요뜻": "줄|논란|분쟁|열|노젓기",
    "메모": "1)열 줄 [노를 써서] 배를 젓다."
  },
  {
    "단어": "section",
    "발음": "sékʃən",
    "주요뜻": "부분|구역|섹션|부문|영역",
    "메모": "1)부분 구분 구역 잘라낸 부분"
  },
  {
    "단어": "would",
    "발음": "wəd əd d; wúd",
    "주요뜻": "…하려고 하다|…할 것이다|…할 수 있었다",
    "메모":
        "1)&lt;단순미래&gt; ~일 것이다 ~하겠다 &lt;가정법&gt; ~[할] 것이다 ~했을 것이다 &lt;정중&gt; ~해 주시겠어요."
  },
  {
    "단어": "however",
    "발음": "hauévər",
    "주요뜻": "그러나|하지만|그런데|그렇지만",
    "메모": "1)그렇지만 그러나 아무리 ~해도[할지라도]"
  },
  {"단어": "taste", "발음": "teist", "주요뜻": "맛|맛보다|취향|미각", "메모": "1)미각 맛 기호 취향 소량"},
  {
    "단어": "lend",
    "발음": "lend",
    "주요뜻": "대출하다|빌려주다|돕다|부여하다",
    "메모": "1)빌려 주다 대여하다."
  },
  {
    "단어": "worry",
    "발음": "wə́ːri",
    "주요뜻": "걱정하다|우려하다|염려|고민하다|불안",
    "메모": "1)걱정하다 고민하다."
  },
  {
    "단어": "tux",
    "발음": "tʌks",
    "주요뜻": "턱시도|tuxedo",
    "메모": "1)&lt;미 구어&gt; 턱시도 = tuxedo"
  },
  {
    "단어": "event",
    "발음": "ivént",
    "주요뜻": "행사|사건|이벤트|대회|경기",
    "메모": "1)사건 일어난 일 행사"
  },
  {
    "단어": "attend",
    "발음": "əténd",
    "주요뜻": "참석하다|다니다|주의하다|돌보다",
    "메모": "1)출석하다 참석하다 돌보다 섬기다."
  },
  {
    "단어": "answer",
    "발음": "ǽnsər",
    "주요뜻": "답하다|대답|해답|전화를 받다|응답하다",
    "메모": "1)대답 해답 반응 대답하다 답하다 응하다."
  },
  {
    "단어": "definite",
    "발음": "défənit",
    "주요뜻": "명확한|분명한|확실한|확정된|명백한",
    "메모": "1)분명한 명확한 확정된"
  },
  {
    "단어": "than",
    "발음": "ðən; (강) ðǽn",
    "주요뜻": "보다|보다는|…이외의|다름아닌",
    "메모": "1)~보다[도] ~하느니보다 [오히려] ~밖에는"
  },
  {
    "단어": "there",
    "발음": "ðər; (강) ðέər",
    "주요뜻": "a location other than here",
    "메모": "1)그곳에[에서 으로] 거기[에] 이봐 저봐"
  },
  {
    "단어": "theater",
    "발음": "θíːətər",
    "주요뜻": "극장|연극|영화관|현장",
    "메모": "1)극장 영화관 연극"
  },
  {"단어": "I don’t think~", "주요뜻": "..하지 않은 것 같다"},
  {
    "단어": "start",
    "발음": "staːrt",
    "주요뜻": "시작하다|처음|출발점|출발하다|설립하다",
    "메모": "1)출발하다 시작하다 착수하다."
  },
  {
    "단어": "concert",
    "발음": "´kɑːnsərt",
    "주요뜻": "콘서트|공연|음악회|연주회|협주곡",
    "메모": "1)음악회 연주회 콘서트 합주"
  },
  {
    "단어": "sunshine",
    "발음": "səˈnʃaiˌn",
    "주요뜻": "햇빛|성격이 밝다|맑은 날씨",
    "메모": "1)햇빛 직사광선 일광 양지"
  },
  {
    "단어": "ideal",
    "발음": "aidíːəl",
    "주요뜻": "이상적인|이념적인|관념적인",
    "메모": "1)이상 이상적인 것[사람] 상상의 것 공상 이상의 관념적인 상상의"
  },
  {
    "단어": "already",
    "발음": "ɔːlrédi",
    "주요뜻": "이미|벌써|지금까지|충분히|이전에",
    "메모": "1)이미 벌써"
  },
  {
    "단어": "find out",
    "주요뜻": "발견하다|알아보다|찾아보다|풀다",
    "메모":
        "1)[조사하여] 발견하다 생각해 내다 풀다 찾아내다.Ex&gt;Please let me know what you find out. 알아보고 나한테 알려 주세요."
  },
  {
    "단어": "company",
    "발음": "kΛmpəni",
    "주요뜻": "회사|따르다|대|출자자|집단",
    "메모": "1)동료 교제 회사"
  },
  {"단어": "computer", "발음": "kəmpjúːtər", "주요뜻": "컴퓨터|계산기", "메모": "1)컴퓨터"},
  {
    "단어": "since",
    "발음": "sins",
    "주요뜻": "…이후|…때부터|…이래|그 후",
    "메모": "1)~이래로. ~이후 지금까지 ~이므로 ~이기 때문에"
  },
  {
    "단어": "quite",
    "발음": "kwait",
    "주요뜻": "꽤|아주|상당히|상당수의|완전히",
    "메모": "1)아주 완전히 꽤"
  },
  {
    "단어": "glad",
    "발음": "glæd",
    "주요뜻": "기쁜|좋은|다행인|고마운|반가운",
    "메모": "1)기쁜 족하는 반가운 즐거운"
  },
  {"단어": "tonight", "발음": "tənáit", "주요뜻": "오늘밤|오늘 저녁|투나잇", "메모": "1)오늘밤[은]"},
  {
    "단어": "on the street",
    "주요뜻": "실직하여|집 없는|돌아다니는",
    "메모":
        "1)거리에서 실직하여 &lt;미 속어&gt; 출옥하여Ex&gt;I gave up trying to park on the street ages ago. 난 길에 주차하는 거 예전에 포기했어요."
  },
  {
    "단어": "come across",
    "주요뜻": "우연히 만나다|이해되다|우연히 찾아내다",
    "메모":
        "1)우연히[뜻밖에] 만나다 [뇌리에] 떠오르다 발견하다. = drop acrossEx&gt;A few days ago I came across John on the street. 며칠 전에 길에서 존을 우연히 만났거든요."
  },
  {
    "단어": "stay",
    "발음": "stei",
    "주요뜻": "머무르다|유지하다|체류하다|지내다|보내다",
    "메모": "1)머무르다 있다 체류하다."
  },
  {
    "단어": "go out",
    "주요뜻": "가다|나가다|죽다|데이트하다|외출하다",
    "메모":
        "1)외출하다 꺼지다 없어지다 떠나다.Ex&gt;She wanted to go out but her mother disapproved. 그녀는 외출하고 싶었지만 어머니가 허락하지 않았어요."
  },
  {"단어": "Celsius", "발음": "sélsiəs", "주요뜻": "섭씨|셀시우스"},
  {
    "단어": "degree",
    "발음": "digríː",
    "주요뜻": "학위|도|등급|급",
    "메모": "1)정도 학위 [각도 온도 등의] 도 급"
  },
  {
    "단어": "outside",
    "발음": "áutsáid -´-、",
    "주요뜻": "밖의|외부의|외에|외곽|야외에",
    "메모": "1)바깥쪽 외면 외부"
  },
  {
    "단어": "hot",
    "발음": "hat",
    "주요뜻": "뜨거운|더운|매운|섹시한|잘하는",
    "메모": "1)뜨거운 더운 톡 쏘는 매운 [보도 등이] 새로운 &lt;구어&gt; 열렬한 &lt;속어&gt; 섹시한"
  },
  {"단어": "What’s the weather like~", "주요뜻": "...의 날씨는 어떻습니까"},
  {
    "단어": "minute",
    "발음": "mínit",
    "주요뜻": "분|잠깐|적은 양의|의사록",
    "메모": "1)분 순간 미소한 사소한"
  },
  {
    "단어": "about",
    "발음": "əbáut",
    "주요뜻": "…에 대하여|약…|정도|좀|거의",
    "메모": "1)~에 관하여[대하여] ~경에 대략"
  },
  {
    "단어": "while",
    "발음": "hwail",
    "주요뜻": "…하면서|…동안에|…에 반하여|동시에|잠시",
    "메모": "1)~하는 동안 ~하는 사이"
  },
  {"단어": "sandwich", "발음": "sǽndwiʧ", "주요뜻": "샌드위치", "메모": "1)샌드위치"},
  {
    "단어": "snack",
    "발음": "snæk",
    "주요뜻": "간식|스낵|과자|야식|가벼운 식사",
    "메모": "1)간식 스낵 간단한[가벼운] 식사 한 입 소량"
  },
  {
    "단어": "perfect",
    "발음": "pə́ːrfikt",
    "주요뜻": "완벽한|완전한|최적의|퍼펙트|이상적인",
    "메모": "1)완전한 완벽한 정확한 순전한"
  },
  {
    "단어": "maybe",
    "발음": "méibiː",
    "주요뜻": "아마|어쩌면|아마도|혹시|그럴지도 모른다",
    "메모": "1)어쩌면 아마"
  },
  {
    "단어": "walk around",
    "발음": "wɔ́ːkəràund",
    "주요뜻": "서커스단의 피에로가 무대 주위를 돌면서 하는 연기|춤추다|여러 각도에서 생각하다",
    "메모":
        "1)주위를 돌아다니다. [걷다]Ex&gt;The man is walking around the block. 남자가 블록 주위를 걷고 있습니다."
  },
  {
    "단어": "feel",
    "발음": "fiːl",
    "주요뜻": "느끼다|기분|감정",
    "메모": "1)느끼다 감지하다 만져보다 더듬다."
  },
  {"단어": "shoe", "발음": "ʃuː", "주요뜻": "신발|구두", "메모": "1)구두"},
  {"단어": "fruit", "발음": "fruːt", "주요뜻": "열매|과일|결과", "메모": "1)과일 열매 과실"},
  {
    "단어": "everything",
    "발음": "eˈvriθiˌŋ",
    "주요뜻": "모든|모든 것|모두|최선|만사",
    "메모": "1)무엇이든지 모두 매사 만사"
  },
  {
    "단어": "right",
    "발음": "rait",
    "주요뜻": "권리|인권|옳은|맞는|바로",
    "메모": "1)바른 옳은 적당한 적절한 오른쪽[편]의"
  },
  {
    "단어": "shopping bag",
    "주요뜻": "쇼핑백|잡다한 것",
    "메모": "1)&lt;미&gt; 쇼핑백 [&lt;영&gt; carrier bag]"
  },
  {
    "단어": "put",
    "발음": "put",
    "주요뜻": "넣다|두다|쓰다|붙이다|간단히 말하다",
    "메모": "1)놓다 두다 넣다 붙이다."
  },
  {
    "단어": "where",
    "발음": "hwεər",
    "주요뜻": "어디|곳|장소",
    "메모":
        "1)&lt;의문부사&gt; 어디에[로 를 에서] &lt;관계부사&gt; ~하는 ~한 &lt;접속사&gt; 하는[한] 곳에[으로 에서 을]"
  },
  {
    "단어": "Well",
    "발음": "wel",
    "주요뜻": "잘|흠|충분히|우물|나은",
    "메모": "1)만족스럽게 잘 훌륭하게 능숙하게 잘 적절히 우물"
  },
  {
    "단어": "fit",
    "발음": "fit",
    "주요뜻": "꼭 맞는|부합|어울리는|건강한|착용",
    "메모": "1)[의지 목적 시기 등에] 꼭 맞다 적합하다. [의복 등이] ~에 [알]맞다 꼭 맞다. 맞게 하다 일치시키다."
  },
  {"단어": "blouse", "발음": "blaus blauz", "주요뜻": "블라우스", "메모": "1)블라우스"},
  {"단어": "ivory", "발음": "áivəri", "주요뜻": "상아|아이보리", "메모": "1)상아 상아색"},
  {"단어": "which", "발음": "hwiʧ", "주요뜻": "어떤|어느", "메모": "1)어느 쪽[것] 어느 사람 어느 어떤"},
  {
    "단어": "as well",
    "주요뜻": "게다가|역시|도|또한|마찬가지로",
    "메모":
        "1)게다가 더욱이 더구나 그 위에 ~도 마찬가지로 잘 [능숙하게]Ex&gt;I found that to be the case as well. 나도 그 점이 문제가 되리라고 생각했었어요."
  },
  {
    "단어": "try on",
    "주요뜻": "입어 보다|시험 착용|신어보다",
    "메모": "1)시험해보다 입어[신어] 보다 가봉하다.Ex&gt;May I try this on? 입어봐도 될까요?"
  },
  {
    "단어": "anyway",
    "발음": "éniwèi -wèiz",
    "주요뜻": "어쨌든|아무튼|어차피|그래서|결국",
    "메모": "1)어쨌든 뭐라 해도 어차피 결국"
  },
  {"단어": "too", "발음": "tuː", "주요뜻": "너무|또한|지나치게|매우", "메모": "1)또한 게다가 너무[나]"},
  {
    "단어": "tight",
    "발음": "tait",
    "주요뜻": "엄격한|빠듯한|꽉끼는|심한|친한",
    "메모": "1)단단히 꽉 끼는 빈틈이 없는 빽빽한"
  },
  {
    "단어": "sheepskin",
    "발음": "ʃiˈpskiˌn",
    "주요뜻": "양가죽|양피 외투|양피지",
    "메모": "1)양피 [무두질한] 양가죽"
  },
  {"단어": "leather", "발음": "léðər", "주요뜻": "가죽|피혁", "메모": "1)가죽 가죽 제품"},
  {
    "단어": "real",
    "발음": "ríːəl",
    "주요뜻": "실제의|진짜의|진정한|실질의|정말로",
    "메모": "1)진짜의 진정한 현실의 실제의 박진감 있는"
  },
  {
    "단어": "light",
    "발음": "lait",
    "주요뜻": "빛|조명|밝게하다|광선|켜다",
    "메모": "1)가벼운 [비중 밀도 등이]적은 약한 희미한 경미한 사소한"
  },
  {
    "단어": "another",
    "발음": "ənΛðər",
    "주요뜻": "다른|또|더|하나|다시",
    "메모": "1)또 하나[한 사람]의 다른 딴 또 하나의 것[사람] 다른 것[사람]"
  },
  {
    "단어": "show",
    "발음": "ʃou",
    "주요뜻": "보여주다|쇼|보이고 있다|나타나다|전시회",
    "메모": "1)보이다 보여주다 나타내다."
  },
  {
    "단어": "strong",
    "발음": "strɔːŋ",
    "주요뜻": "강한|강력히|강력한|강세의|튼튼한",
    "메모": "1)힘 센 강한 튼튼한 강경한"
  },
  {
    "단어": "girlfriend",
    "발음": "gərˈlfreˌnd",
    "주요뜻": "여자 친구|애인|연인",
    "메모": "1)여자 친구 애인"
  },
  {"단어": "perfume", "발음": "pə́ːrfjuːm", "주요뜻": "향수|향기", "메모": "1)향수 향기"},
  {
    "단어": "look for",
    "주요뜻": "찾다|주세요|위해|원하다|찾아보다",
    "메모":
        "1)찾다 기대하다.Ex&gt;She and Jina look for costumes for the play. 그녀와 지나는 연극에 쓸 의상들을 찾습니다."
  },
  {
    "단어": "expect",
    "발음": "ikspékt",
    "주요뜻": "예상하다|기대하다|생각하다|바라다|기다리다",
    "메모": "1)기대하다 예상하다 생각[추측]하다."
  },
  {
    "단어": "let",
    "발음": "let",
    "주요뜻": "…하게 해주다|…하도록 두다|들여보내다|방치하다|세놓다",
    "메모":
        "1)~에게 ~시키다 ~하게 해주다 ~할 것을 허용하다 = allow toEx&gt;Let me hear you sing. 당신 노래를 들려 주세요."
  },
  {"단어": "seat", "발음": "siːt", "주요뜻": "앉다|자리|좌석|의석|시트", "메모": "1)좌석 자리 의석"},
  {
    "단어": "find",
    "발음": "faind",
    "주요뜻": "찾다|발견하다|알다|알아보다",
    "메모": "1)발견하다 찾아내다 알다 깨닫다."
  },
  {
    "단어": "people",
    "발음": "píːpl",
    "주요뜻": "사람들|국민|인간|주민|대중",
    "메모": "1)사람들 국민 민족"
  },
  {
    "단어": "inside",
    "발음": "ìnsáid -´-、",
    "주요뜻": "내부|안쪽|…안에",
    "메모": "1)안쪽[의] 내부[의]"
  },
  {
    "단어": "whopper",
    "발음": "hwάpər",
    "주요뜻": "엄청나게 큰 것|터무니없는 허풍|때리는 사람",
    "메모": "1)때리는 사람 엄청난 것 굉장히 큰 것 와퍼 [먹을거리]"
  },
  {
    "단어": "check",
    "발음": "ʧek",
    "주요뜻": "확인하다|점검하다|검사|체크|수표",
    "메모": "1)점검 검사 전표 계산서 청구서 수표 조사하다 점검하다."
  },
  {
    "단어": "include",
    "발음": "inklúːd",
    "주요뜻": "포함하다|포괄하다|함유하다",
    "메모": "1)포함하다 함유[포괄]하다."
  },
  {
    "단어": "tip",
    "발음": "tip",
    "주요뜻": "팁|끝|일각|조언|방법",
    "메모": "1)팁 사례금 조언 힌트 ~에게 팁을 주다."
  },
  {
    "단어": "pleasure",
    "발음": "pléʒər",
    "주요뜻": "즐거움|기쁨|쾌락|기쁘다|반갑다",
    "메모": "1)즐거움 유쾌 만족"
  },
  {
    "단어": "treat",
    "발음": "triːt",
    "주요뜻": "치료하다|처리하다|대하다|대우하다|취급하다",
    "메모": "1)대우하다 다루다 취급하다 치료하다 대접하다 한턱내기 대접 한턱낼 차례"
  },
  {
    "단어": "delicious",
    "발음": "dilíʃəs",
    "주요뜻": "맛있는|맛좋은|달콤한|즐거운|먹음직",
    "메모": "1)맛좋은 맛있는 상쾌한"
  },
  {"단어": "late", "발음": "leit", "주요뜻": "말기의|늦은|늦도록|늦게|최근의", "메모": "1)늦은 지각한 더딘"},
  {
    "단어": "skip",
    "발음": "skip",
    "주요뜻": "거르다|건너뛰다|생략하다|줄넘기하다|빼먹다",
    "메모": "1)뛰어다니다. 건너뛰다 빼먹다 결석하다."
  },
  {
    "단어": "sometimes",
    "발음": "sΛmtàimz",
    "주요뜻": "때때로|가끔|종종|어떤 때|이따금",
    "메모": "1)때때로 때로는 가끔"
  },
  {"단어": "rice", "발음": "rais", "주요뜻": "쌀|벼|밥", "메모": "1)쌀 밥"},
  {
    "단어": "bacon",
    "발음": "béikən",
    "주요뜻": "베이컨",
    "메모": "1)베이컨 [돼지의 옆구리나 등의 살을 소금에 절여 훈제한 것]"
  },
  {
    "단어": "cereal",
    "발음": "síəriəl",
    "주요뜻": "시리얼|곡물",
    "메모": "1)곡식[의] 곡물로 만든 [아침 식사용]곡물 식품"
  },
  {
    "단어": "breakfast",
    "발음": "brékfəst",
    "주요뜻": "아침|아침식사|조식",
    "메모": "1)아침 식사 조반"
  },
  {
    "단어": "usually",
    "발음": "júːʒuəli -ʒwəli",
    "주요뜻": "보통|대개|일반적으로|늘|평소",
    "메모": "1)보통 늘 일반적으로 대개 평소에[는]"
  },
  {
    "단어": "along",
    "발음": "əlɔ́ːŋ",
    "주요뜻": "함께|…을 따라|동안에|가지고|계속",
    "메모": "1)~을 따라서 ~을 지나서 ~을 끼고"
  },
  {
    "단어": "distance",
    "발음": "dístəns",
    "주요뜻": "거리|간격|먼 곳|먼 데",
    "메모": "1)거리 간격 먼 거리 공간 넓이"
  },
  {
    "단어": "drive",
    "발음": "draiv",
    "주요뜻": "운전하다|구동하다|드라이브|가다|몰다",
    "메모": "1)몰다 운전하다 조종하다."
  },
  {
    "단어": "believe",
    "발음": "bilíːv bə-",
    "주요뜻": "믿다|생각하다|신뢰하다|신용하다|신앙",
    "메모": "1)믿다 생각하다."
  },
  {
    "단어": "near",
    "발음": "niər",
    "주요뜻": "근처|가깝게|인접한|거의|접근한",
    "메모": "1)가까이 근접하여 이웃하여"
  },
  {
    "단어": "fast food",
    "발음": "fǽstfúːd",
    "주요뜻": "패스트푸드|즉석 식품|즉석 요리의",
    "메모":
        "1)패스트 푸드 즉석 음식Ex&gt;Fast food is really cheap and fast. 패스트푸드는 정말 저렴하고 빨라요."
  },
  {
    "단어": "medium",
    "발음": "míːdiəm",
    "주요뜻": "중간|배지|매체|미디어|기관",
    "메모": "1)수단 매개물 중간[의] [스테이크가] 미디엄의 중간 정도로 구워진"
  },
  {
    "단어": "one",
    "발음": "wʌn",
    "주요뜻": "하나|어느|한번|한 개|유일한",
    "메모":
        "1)이미 나온 가산명사의 반복을 피하기 위한 대명사로 쓰이기도 합니다.Ex&gt;I want an apple. May I take on-e? 난 사과를 먹고 싶은데 하나 가져가도 될까요?"
  },
  {
    "단어": "steak",
    "발음": "steik",
    "주요뜻": "스테이크",
    "메모": "1)[요리용 쇠고기·생선의] 두껍게 썬 고기 스테이크"
  },
  {
    "단어": "recommend",
    "발음": "rèkəménd",
    "주요뜻": "권고하다|추천하다|건의하다|제시하다",
    "메모": "1)추천하다 권하다 충고하다."
  },
  {
    "단어": "choice",
    "발음": "ʧɔis",
    "주요뜻": "선택|결정|선정|종류",
    "메모": "1)선택[하다] 선택된 것[사람]"
  },
  {
    "단어": "seem",
    "발음": "siːm",
    "주요뜻": "…것처럼 보이다|…것 같다|듯하다|생각되다|느껴지다",
    "메모": "1)~처럼 보이다 ~인 듯하다. ~인 것 같다."
  },
  {"단어": "sushi", "발음": "súːʃi -ʃiː", "주요뜻": "초밥", "메모": "1)스시 초밥"},
  {
    "단어": "other",
    "발음": "Λðər",
    "주요뜻": "다른|기타의|타인|나머지의|반면에",
    "메모": "1)다른 그 밖의 다른 하나의"
  },
  {
    "단어": "almost",
    "발음": "ɔ́ːlmoust",
    "주요뜻": "거의|대부분|약|…에 가까운|하마터면",
    "메모": "1)거의 대체로 하마터면"
  },
  {"단어": "dinner", "발음": "dínər", "주요뜻": "저녁|저녁식사|만찬|정찬", "메모": "1)정찬 저녁 식사"},
  {"단어": "cash", "발음": "kæʃ", "주요뜻": "현금화하다|현금|돈|현찰", "메모": "1)현금 돈"},
  {
    "단어": "inconvenience",
    "발음": "ìnkənvíːnjəns",
    "주요뜻": "불편|폐|수고하다",
    "메모": "1)불편 부자요 불편한 것"
  },
  {
    "단어": "someone",
    "발음": "sΛmwΛn -wən",
    "주요뜻": "누군가|어떤 사람",
    "메모": "1)어떤 사람 누군가 = somebody"
  },
  {"단어": "front desk", "주요뜻": "프런트", "메모": "1)호텔 등의] 프런트"},
  {
    "단어": "pick up",
    "주요뜻": "집다|들다|회복하다|받다|배우다",
    "메모":
        "1)줍다 집어 올리다 잡다 고르다 회복하다 얻다.Ex&gt;We sure did pick up a bad hotel! 정말 형편없는 호텔을 잡았어요!"
  },
  {
    "단어": "did",
    "발음": "did",
    "주요뜻": "do의 과거형|다중 인격 장애(dissociative identity disorder)",
    "메모":
        "1)do의 과거형으로 과거시제에서 긍정문의 강조 용법으로 쓰이기도 합니다.Ex&gt;I did go but I couldn’t see him. 가긴 갔지만 그를 만날 수 없었어요."
  },
  {
    "단어": "tasty",
    "발음": "téisti",
    "주요뜻": "맛있는|맛좋은|맛난|먹음직스러운",
    "메모": "1)맛좋은 감칠맛이 있는 멋있는 세련된"
  },
  {
    "단어": "sign",
    "발음": "sain",
    "주요뜻": "체결하다|계약하다|서명하다|징후|사인하다",
    "메모": "1)기호 신호 간판 표지 서명[사인]하다."
  },
  {
    "단어": "could",
    "발음": "kəd; (강) kud",
    "주요뜻": "…할 수 있다|…할 수 있을 것이다|…하여 주시겠습니까|…하여도 좋다|…하여도 괜찮겠습니까",
    "메모": "1)~할 수[가] 있[었]다 ~할 수 있었다[면] ~할 수 있었을 텐데 &lt;허가 부탁&gt; ~하여 주시겠습니까."
  },
  {
    "단어": "fill in",
    "주요뜻": "대리|기입|기입하다",
    "메모":
        "1)[빈 곳을] 채우다 [문서 등에] 필요한 항목을 써넣다.Ex&gt;Here just fill in this form. 여기서 하시면 돼요. 이 양식에 기입해 주세요."
  },
  {"단어": "dollar", "발음": "dάlər", "주요뜻": "달러", "메모": "1)달러"},
  {"단어": "hundred", "발음": "hΛndrəd", "주요뜻": "100|100달러 지폐", "메모": "1)100 다수"},
  {
    "단어": "million",
    "발음": "míljən",
    "주요뜻": "100만|수백만|무수한",
    "메모": "1)100만[의] 수백만[의] 다수[의]"
  },
  {"단어": "receipt", "발음": "risíːt", "주요뜻": "영수증|증서", "메모": "1)영수증"},
  {
    "단어": "tax",
    "발음": "tæks",
    "주요뜻": "세금|세|과세하다",
    "메모": "1)세 세금 세금을 부과하다 과세하다."
  },
  {
    "단어": "service charge",
    "주요뜻": "서비스료|서비스 요금|수수료",
    "메모":
        "1)서비스료Ex&gt;In some cases the service charge might be deferred. 어떤 경우에는 서비스료가 나중에 지불되기도 합니다."
  },
  {
    "단어": "hairstyle",
    "발음": "hέərstàil",
    "주요뜻": "머리 모양|헤어스타일|머리형",
    "메모": "1)머리형 헤어스타일"
  },
  {
    "단어": "loose",
    "발음": "luːs",
    "주요뜻": "풀다|엉성한|헐거운|느슨해지다|자유로운",
    "메모": "1)풀린 헐거운 느슨한 꽉 죄지 않은"
  },
  {
    "단어": "curly",
    "발음": "kə́ːrli",
    "주요뜻": "머리칼이 곱슬곱슬한|동그랗게 말린",
    "메모": "1)곱슬곱슬한 고수머리의"
  },
  {
    "단어": "bill",
    "발음": "bil",
    "주요뜻": "법안|빌|지폐|증권|청구서",
    "메모": "1)계산서 청구서 &lt;미&gt; 지폐"
  },
  {
    "단어": "break",
    "발음": "breik",
    "주요뜻": "깨다|부러지다|휴식|중단하다|어기다",
    "메모": "1)깨뜨리다[쪼개다] 부수다 고장내다 파산하다."
  },
  {
    "단어": "debit card",
    "주요뜻": "데빗 카드|직불 카드",
    "메모": "1)현금 카드 데빗 카드[은행 예금을 직접 인출 예입할 수 있는 카드]"
  },
  {
    "단어": "some",
    "발음": "səm; (강) sΛm",
    "주요뜻": "일부|몇|어떤|…중에는|약간",
    "메모": "1)얼마간의 다소의 조금의 ~중에는 무슨 어떤 대단한"
  },
  {
    "단어": "down payment",
    "주요뜻": "계약금|착수금|집을 구매할 때내는 첫 착수금",
    "메모": "1)[할부금의] 계약금 첫 불입금"
  },
  {"단어": "percent", "발음": "pərsént", "주요뜻": "퍼센트|%", "메모": "1)퍼센트 백분 백분율"},
  {
    "단어": "guide",
    "발음": "gaid",
    "주요뜻": "가이드|유도하다|안내하다|지도하다|인도하다",
    "메모": "1)안내하다 지도하다 안내자 길잡이"
  },
  {"단어": "apartment", "발음": "əpάːrtmənt", "주요뜻": "아파트", "메모": "1)아파트"},
  {
    "단어": "work",
    "발음": "wəːrk",
    "주요뜻": "일하다|연구|작업|작품|작동하다",
    "메모": "1)일 작업 작품 일하다 움직이다 작동하다."
  },
  {"단어": "air conditioner", "주요뜻": "에어컨|냉난방 장치", "메모": "1)공기 조절[냉난방] 장치 에어컨"},
  {
    "단어": "install",
    "발음": "instɔ́ːl",
    "주요뜻": "설치하다|장착하다|임명하다",
    "메모": "1)장치하다 설치하다 취임시키다 임명하다."
  },
  {
    "단어": "price range",
    "주요뜻": "가격폭",
    "메모":
        "1)[상품 증권 등의] 가격폭Ex&gt;What’s your general price range? 대충 얼마 정도의 가격을 생각하고 계십니까?"
  },
  {
    "단어": "beyond",
    "발음": "biάnd bijάnd",
    "주요뜻": "…을 넘어서|…이상으로|뛰어넘는|…이후|…이외는",
    "메모":
        "1)&lt;장소&gt; ~의 저쪽[너머]에[서] ~을 넘어서 &lt;시각&gt; ~을 지나서 &lt;정도 한도&gt; ~의 범위를 넘어서"
  },
  {
    "단어": "spend",
    "발음": "spend",
    "주요뜻": "보내다|쓰다|지출하다|소비하다|사용하다",
    "메모": "1)쓰다 소비하다 낭비하다."
  },
  {
    "단어": "without",
    "발음": "wiðáut wiθáut",
    "주요뜻": "…없이|…하지 않고",
    "메모": "1)~이 없이 ~이 없으면 ~하지 않고"
  },
  {
    "단어": "rent",
    "발음": "rent",
    "주요뜻": "세|빌리다|임대하다|렌트|집세",
    "메모": "1)집세 임대 임대하다."
  },
  {"단어": "size", "발음": "saiz", "주요뜻": "크기|규모|사이즈|치수|면적", "메모": "1)크기 치수"},
  {"단어": "hobby", "발음": "hάbi", "주요뜻": "취미", "메모": "1)취미 도락 장기"},
  {
    "단어": "take",
    "발음": "teik",
    "주요뜻": "(시간)이 걸리다|가지다|받다|찍다|데려가다",
    "메모": "1)잡다 획득하다[얻다] 사다 받다 맞아들이다 데리고 가다 경험하다."
  },
  {
    "단어": "beat a dead horse",
    "주요뜻": "결말이 난 화제를 다시 문제 삼다|헛수고를 하다|헛수고하다",
    "메모":
        "1)&lt;구어&gt; 다 끝난 문제를 논하다 아무도 흥미를 갖지 않는 이야기를 계속하다 헛수고하다.Ex&gt;Let's not beat a dead horse. 이미 끝난 얘기니까 그만해요."
  },
  {"단어": "animal", "발음": "ǽnəməl", "주요뜻": "동물|짐승|야수", "메모": "1)동물 짐승"},
  {
    "단어": "adore",
    "발음": "ədɔ́ːr",
    "주요뜻": "아주 좋아하다|숭배하다|흠모하다|존경하다",
    "메모": "1)숭배하다 받들다 동경하다 &lt;구어&gt; 아주 좋아하다."
  },
  {
    "단어": "come on",
    "주요뜻": "오다|그러지 말고|나오다|괜찮아|시작하다",
    "메모": "1)&lt;구어&gt; ‘자 어서 그러지 말고 제발 빨리 힘내’ 등의 표현으로 잘 쓰입니다."
  },
  {
    "단어": "something",
    "발음": "sΛmθiŋ",
    "주요뜻": "무언가|어떤 것|중요한 것|어떤 일|조금",
    "메모": "1)무엇인가 어떤 것 어느 정도 다소"
  },
  {
    "단어": "pet",
    "발음": "pet",
    "주요뜻": "애완동물|펫",
    "메모": "1)애완동물 총아 귀염둥이 특히 좋아하는 장기의"
  },
  {
    "단어": "get",
    "발음": "get",
    "주요뜻": "…시키다|받다|얻다|가지다|알아듣다",
    "메모": "1)얻다 가지다 사다 구해 주다 도착하다 ~와 연락이 닿다 잡다 식사하다."
  },
  {
    "단어": "envy",
    "발음": "énvi",
    "주요뜻": "부러워하다|질투하다|선망",
    "메모": "1)부러워하다 질투 선망 시기"
  },
  {
    "단어": "wonderful",
    "발음": "wΛndərfəl",
    "주요뜻": "멋진|훌륭한|놀라운|좋은|아름다운",
    "메모": "1)이상한 불가사의한 놀랄[경탄할] 만한 경이적인 &lt;구어&gt; 훌륭한 굉장한"
  },
  {
    "단어": "immaculate",
    "발음": "imǽkjulət",
    "주요뜻": "결점이 없는|순결한|단색의",
    "메모": "1)오점[결점] 없는 흠 없는 완전한 깨끗한"
  },
  {"단어": "lawn", "발음": "lɔːn", "주요뜻": "잔디|정원|야외용", "메모": "1)잔디 잔디밭"},
  {
    "단어": "shrubbery",
    "발음": "ʃrΛbəri",
    "주요뜻": "관목|키 작은 나무|식수한 관목들",
    "메모": "1)관목을 심은 길 관목 숲 관목"
  },
  {
    "단어": "all around",
    "주요뜻": "다재다능한|전반에 걸친|전면적인",
    "메모":
        "1)도처에 빙 돌아서 모든 사람에게Ex&gt;Fountains are all around the pond. 분수들이 연못 여기저기에 있습니다."
  },
  {
    "단어": "lovely",
    "발음": "lΛvli",
    "주요뜻": "사랑스런|멋진|아름다운|예쁜|귀여운",
    "메모": "1)귀여운 사랑스런 아름다운 멋진"
  },
  {"단어": "garden", "발음": "gάːrdn", "주요뜻": "정원|가든|원예를 하다", "메모": "1)뜰 정원"},
  {
    "단어": "plant",
    "발음": "plænt",
    "주요뜻": "식물|공장|심다|플랜트|시설",
    "메모": "1)식물 초목 원예 공장 [식물을]심다 창립[건설]하다."
  },
  {
    "단어": "away",
    "발음": "əwéi",
    "주요뜻": "떨어져|멀리|당장|떠나|사라져",
    "메모": "1)[특정 장소로부터] 떨어져 떠나 [~로부터] 떨어진 곳에서 저리로 끊임없이 연이여"
  },
  {"단어": "swimming pool", "주요뜻": "수영장|용수 탱크", "메모": "1)수영장"},
  {
    "단어": "park",
    "발음": "paːrk",
    "주요뜻": "박|공원|경기장|주차하다",
    "메모": "1)공원 유원지 운동장 주차장 주차시키다."
  },
  {
    "단어": "children",
    "발음": "tʃíldrən",
    "주요뜻": "아이들|아동|자녀|어린이",
    "메모": "1)child[아이 어린이]의 복수입니다. ‘아이들 어린이들’"
  },
  {
    "단어": "anywhere",
    "발음": "énihwεər",
    "주요뜻": "어딘가에|어디든지|어느 곳이든|아무데도",
    "메모":
        "1)&lt;긍정문&gt; 어디[로]든지 &lt;부정문에서&gt; 아무데도 &lt;의문문 조건절에서&gt; 어딘가에[로] 어디엔가"
  },
  {
    "단어": "near by",
    "주요뜻": "가까운|가까이로",
    "메모": "1)가까이에Ex&gt;There are bus stops near by. 버스 정류장이 가까워요."
  },
  {"단어": "bus stop", "주요뜻": "버스 정류장", "메모": "1)버스 정류장"},
  {"단어": "subway", "발음": "sΛbwèi", "주요뜻": "지하철", "메모": "1)지하철 지하도"},
  {
    "단어": "close",
    "발음": "klouz",
    "주요뜻":
        "at or within a short distance in space or time or having elements near each other",
    "메모": "1)[시간 공간 등이] 가까운 빽빽한 밀집한"
  },
  {
    "단어": "right now",
    "주요뜻": "지금|현재|당장|이제|요즘",
    "메모":
        "1)지금 바로 방금Ex&gt;I'm on my way to a meeting right now. 지금 회의에 참석하러 가는 길이라서요."
  },
  {
    "단어": "stack",
    "발음": "stæk",
    "주요뜻": "쌓다|스택|더미|한 무더기|굴뚝",
    "메모": "1)쌓다 쌓아 올리다 정체시키다 더미 퇴적 쌓아 올림."
  },
  {
    "단어": "should",
    "발음": "ʃəd (유성음 앞에서) ʃd (무성음 앞에서) ʃt; (강) ʃud",
    "주요뜻": "…할 것이다|아마 …일 것이다|…하여야 하다",
    "메모":
        "1)&lt;당연 의무&gt; ~하여야 하다 &lt;가능성 기대&gt; 반드시 ~일 것이다 &lt;조건절&gt; 만일 ~이라면 &lt;조건문 귀결절&gt; ~일 것이다."
  },
  {
    "단어": "recycling",
    "발음": "risaiˈkəliŋ",
    "주요뜻": "재활용|재생 이용|재순환",
    "메모": "1)재활용"
  },
  {
    "단어": "throw away",
    "주요뜻": "버리다|던지다|낭비|허비하다|내버리다",
    "메모":
        "1)[쓸데없어서] 버리다 낭비하다 [기회·충고 등을] 저버리다 [카드패를] 버리다.Ex&gt;Should we try to wash it or just throw it away and buy a new on-e? 이걸 닦아서 써야 할까요 아니면 그냥 버리고 새 걸 사야 할까요?"
  },
  {
    "단어": "cartoon",
    "발음": "kaːrtúːn",
    "주요뜻": "만화|만평",
    "메모": "1)[시사] 만화 만화 영화 [신문의] 연속 만화"
  },
  {
    "단어": "even",
    "발음": "íːvən",
    "주요뜻": "평평해지다|균등해지다|백중해지다|같은",
    "메모": "1)사실 극단적인 사례 등을 강조하여 ‘~까지도 ~조차[도] ~마저’ 라는 뜻으로 쓰입니다."
  },
  {
    "단어": "catch up",
    "발음": "kǽʧΛp",
    "주요뜻": "따라잡다|따라가다|대화하다|밀린 일을 하다|휘말리다",
    "메모":
        "1)급히 집어 들다 [올리다] 따라붙다 에 열중시키다.Ex&gt;You’ll have to study some to catch up with the others. 열심히 공부하지 않으면 다른 애들을 좇아갈 수 없습니다."
  },
  {"단어": "downstairs", "발음": "dáunstέərz", "주요뜻": "아래층의", "메모": "1)아래층으로[에]"}
];
var jsonData = jsonEncode(listData);
var wordsList = jsonDecode(jsonData);

void main() {
  log(wordsList[0]['단어']);
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.book),
        title: Text("MILK ENGlISH"),
      ),
      body: Column(
        children: [
          Search(),
          for (num i = 1; i < wordsList.length; i++)
            Container(
              color: Colors.yellow,
              height: 60,
              padding: EdgeInsets.all(10),
              child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        wordsList[i]['단어'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // Text(
                      //   wordsList[i]['주요뜻'],
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      // Text(
                      //   wordsList[i]['발음'],
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      // Text(
                      //   wordsList[i]['메모'],
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border))
                    ],
                  )),
            )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home),
          IconButton(
              icon: Icon(Icons.bookmark_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookMark()),
                );
              }),
        ],
      )),
    ));
  }
}

class BookMark extends StatelessWidget {
  const BookMark({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.book),
        title: Text("MILK ENGlISH"),
      ),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),
          Icon(Icons.bookmark)
        ],
      )),
    ));
  }
}

TextEditingController searchTextEditingController = TextEditingController();
controlSearching(input) {
  log(input);
}

emptyTextFormField() {
  searchTextEditingController.clear();
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title: TextFormField(
          controller: searchTextEditingController,
          onFieldSubmitted: controlSearching,
          decoration: InputDecoration(
            hintText: 'Search here...',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.grey,
              ),
              onPressed: emptyTextFormField,
            ),
          ),
        ));
  }
}
