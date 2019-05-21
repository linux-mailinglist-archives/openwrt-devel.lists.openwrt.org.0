Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D0624BCE
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 11:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tWjb/UVIHt/xbkEm3jsof4HLOD0TXwXlbNVgaFOXfeQ=; b=C1U8d8ZjpH+Yg0Q4Rd0gkyKBN
	vdeTZ+Q93rXhB5zOW60VR/gWHSm+XSxOvXjaxVpRJ/C2MXEFvNNz/ZOwCTHrcEqApeDhUCsuGcNmG
	vS2AfzrzOEQP1k0WVFaoE3mk3AqLfpUubNT0kJMP4lLiairTVWH2tKiHr+GzNdTgZcc63SgBbGtNz
	nM8T1JsZ2WWZ2cc5x3gBmC6uul0IF87s51Sl6SIGK+mSlYX2G72Rn8Bw511QjcUTbQWaE/iLPs5qr
	h3dYS30NpJLFpiy/FEKHciBCluUjNREjSLz/5Otqr3tCPEnWqT+OFhVZPvAIgdAsvPtWlUxlb4bnq
	SW1bbmriQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1DG-0008RT-DK; Tue, 21 May 2019 09:37:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1D6-0008Nh-9C
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 09:37:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id e15so17783317wrs.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 May 2019 02:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=fOrzHD9J0jBrJ4QTrEZtRgsujGNOT06WMU+An4Iflro=;
 b=WZ0+BYM8F4Yuxo2PEQGV4hGaIDLQTQ7mHbSTCsoDclMhd8VBJDVefGXofzXivKN9+X
 VAF650pn5nRDYhQOzn1BIRkoVkE4WNwcXRyFeqNf9sX25YA1wh6WejLtuhtb9kLz76Dw
 uM2l894V/czFBDjdr7HGrXOCRTpD9rLzZwYRbM3FmfiJRL2qE0itARbYwZsp22lrmt5p
 Dii/GuQmNgdBxLx8cwHcApj/40GBTDCo8dRdaxQE6iyzibVgB7Q8vuM+0R1sHK8eYtK4
 vv+L1/LgZunDUeBSwakLvCQO7ygeJRl4BZ0WQ8HMKtT4f00Mbxi2Y0us5PSop+WG/LlX
 n0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=fOrzHD9J0jBrJ4QTrEZtRgsujGNOT06WMU+An4Iflro=;
 b=DaWHW0NH5zaYFwt+Mp8W8BZqoXx63DfcciQneaCyqilDoCFAG7llodeY0VzkKa0k8D
 5aTLkYa7EVbWvL54z0DoqzZZL/gHShiRF0H94sbBIl/Z91z40jkLss+xEHmlK8WXoxEU
 losnYPqmApLcf9er0Ukp2yuyZWv6yc8t+OC16CRyifN2QcOuL8678YbzH1owk3cE82NU
 H2bwbr9MujaD50Q61Oq1tKd1ucl+rfxhPdDB6Z3RWqOhtAUXUWWshdfKV7nowdcry98x
 EOXiqyPJQ4eE5NMbTL23YX5pxfKqKzElnuDQJa3RwQCW4rKLqlQ0RS+pdsP9uu/+cUfQ
 /F1g==
X-Gm-Message-State: APjAAAXYKI4xJYKstWx7ZTe6u8mY7L6KOClaGpbjJWvfDnRN6diNew/X
 Cq+/476mV4bOxnoomdA4Tmg=
X-Google-Smtp-Source: APXvYqwz8SEqAZbfczlIQM+mEWK0muR/ld2FXT5gsEbZMOnBOcavQcuuq9sk/1TQgU/TveQgvsgSYw==
X-Received: by 2002:adf:f78d:: with SMTP id q13mr344904wrp.220.1558431446196; 
 Tue, 21 May 2019 02:37:26 -0700 (PDT)
Received: from [192.168.111.140] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id b136sm2739558wmg.1.2019.05.21.02.37.24
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 02:37:25 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
 <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
 <20190521091326.GK63920@meh.true.cz>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <bc46acbe-c9f0-77e6-7218-a6b8465a59f0@gmail.com>
Date: Tue, 21 May 2019 11:37:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521091326.GK63920@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_023728_330865_705C2485 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Documentation in the tree? [Was: Re: [PATCH v3]
 gemini: Support sysupgrade on DIR-685]
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Javier Domingo Cansino <javierdo1@gmail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Thomas Endt <tmo26@gmx.de>
Content-Type: multipart/mixed; boundary="===============0098847975817883535=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0098847975817883535==
Content-Type: multipart/alternative;
 boundary="------------C061C3338CED3AF1B8DDB0D1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C061C3338CED3AF1B8DDB0D1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 21/05/19 11:13, Petr Štetiar wrote:
> Linus Walleij <linus.walleij@linaro.org> [2019-05-20 23:48:41]:
>
> [adding Alberto, Thomas and Javier to the Cc: loop]
>
>> how you want the sysupgrade to work.
> it's just preferred to share as much common code as possible.
>
>> Maybe we could open a documentation page for new devices, like here is how
>> we want you to implement sysupgrade, I had a hard time to figure out that
>> all was circuling around the platform.sh script and how that was called from
>> the core sysupgrade.
> indeed, some documentation would be certainly nice and welcome, but I think,
> that it's clear, that having the documentation decoupled from the code (wiki
> today) leads often to outdated (incomplete, even factually wrong or misleadin)
> documentation which might be even more confusing for the starters then current
> "read the code Luke" approach.
>
> I mean, maybe this is the right time to rethink[1,2], so we could have
> docs/Documentation folder in the source tree, like it's done in the kernel and
> other projects.
>
> 1. https://lede.readthedocs.io/en/latest/
> 2. https://lists.openwrt.org/pipermail/openwrt-devel/2017-November/009888.html
>
> -- ynezz


The only clear thing is that documentation does not write itself and that

you can't rely on users to write developer documentation.

Where it is kept is irrelevant, what is relevant is that people doing 
commits

(members and contributors) actually write it and keep it updated 
wherever it is kept.


I'd like to point out that it was yours truly that deleted the 
documentation

folder in the current OpenWrt tree

with commit 882f4d2d63272abce8c1966983aa10178e2e971f

as it was horribly outdated and completely useless

(and we got people rightfully complaining about it in the forums).


-Alberto.


--------------C061C3338CED3AF1B8DDB0D1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 21/05/19 11:13, Petr Štetiar wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20190521091326.GK63920@meh.true.cz">
      <pre class="moz-quote-pre" wrap="">Linus Walleij <a class="moz-txt-link-rfc2396E" href="mailto:linus.walleij@linaro.org">&lt;linus.walleij@linaro.org&gt;</a> [2019-05-20 23:48:41]:

[adding Alberto, Thomas and Javier to the Cc: loop]

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">how you want the sysupgrade to work.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
it's just preferred to share as much common code as possible.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Maybe we could open a documentation page for new devices, like here is how
we want you to implement sysupgrade, I had a hard time to figure out that
all was circuling around the platform.sh script and how that was called from
the core sysupgrade.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
indeed, some documentation would be certainly nice and welcome, but I think,
that it's clear, that having the documentation decoupled from the code (wiki
today) leads often to outdated (incomplete, even factually wrong or misleadin)
documentation which might be even more confusing for the starters then current
"read the code Luke" approach.

I mean, maybe this is the right time to rethink[1,2], so we could have
docs/Documentation folder in the source tree, like it's done in the kernel and
other projects.

1. <a class="moz-txt-link-freetext" href="https://lede.readthedocs.io/en/latest/">https://lede.readthedocs.io/en/latest/</a>
2. <a class="moz-txt-link-freetext" href="https://lists.openwrt.org/pipermail/openwrt-devel/2017-November/009888.html">https://lists.openwrt.org/pipermail/openwrt-devel/2017-November/009888.html</a>

-- ynezz
</pre>
    </blockquote>
    <p><br>
    </p>
    <p>The only clear thing is that documentation does not write itself
      and that <br>
    </p>
    <p>you can't rely on users to write developer documentation.</p>
    <p>Where it is kept is irrelevant, what is relevant is that people
      doing commits</p>
    <p>(members and contributors) actually write it and keep it updated
      wherever it is kept.</p>
    <p><br>
    </p>
    <p>I'd like to point out that it was yours truly that deleted the
      documentation <br>
    </p>
    <p>folder in the current OpenWrt tree <br>
    </p>
    <p>with commit <span class="sha-block"><span class="sha
          user-select-contain">882f4d2d63272abce8c1966983aa10178e2e971f</span></span></p>
    <p><span class="sha-block"><span class="sha user-select-contain">as
          it was horribly outdated and completely useless <br>
        </span></span></p>
    <p><span class="sha-block"><span class="sha user-select-contain">(and
          we got people rightfully complaining about it in the forums).<br>
        </span></span></p>
    <p><span class="sha-block"><span class="sha user-select-contain"><br>
        </span></span></p>
    <p><span class="sha-block"><span class="sha user-select-contain">-Alberto.</span></span></p>
  </body>
</html>

--------------C061C3338CED3AF1B8DDB0D1--


--===============0098847975817883535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0098847975817883535==--

