Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C86435A77
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 12:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y45Zkh51uMkdJ1dAg9rs9Y4eW1pXN89Fd6vx18ZYRTA=; b=g6VRVdryWahi1NJ5RnyTZC4tQ
	sJolFqpRzx/NKBeb34hu/whHV2RqEDDwkIkGEoxown6FiEBxZ4lMwKY1Qq5n+S55i5CT/48rTla5O
	AXr13vIGDTmGbSIXOYghMVRRyM2SkeFuvWSdkWdndFOrmVCc6nhjAg+1AMV+GJA3/zXFrWIML1j5w
	I6XfJkJsarq9w6d9YuO3VQg/rSinQgb2wVuUUxNhrk5kFbr5v6rBsSSWsIenS/xqDJ392q8m2fo5Q
	JrXN19cGCBcKDKYRM8MitqKswf9YuDpByBI7hKZVQ29wRhR3S022wKihcMGrO7iy9gGikKrqQY0lL
	J+J4u834Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTEO-0000U1-Et; Wed, 05 Jun 2019 10:33:20 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTEG-0000TN-9V
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 10:33:13 +0000
Received: by mail-wr1-x430.google.com with SMTP id n9so6476505wru.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 03:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=Y2IRWYRCXP90xJ9XQ7tJytxEdFc5lREhwvsRosF6qJw=;
 b=lFJ37ENy4UA/qo8Dypl+N8pSACXjz37mZBamucInLHNh3mZfpFNbpFg2gLpQzn/BpX
 yz4ze/l9CtoFc7kJzqnAeAarBbnlkhrLmf7jUgZwuNfVTdO5IQ1iRENu08M92ESRZBML
 7NacK/zAESTBr72qNYGR9P6MxZhOsQDqTRHz8fUCG8CuiTdzNr51Ms4GywHdu/FX3lT6
 IwsiCtLPE5J+nh5C7Jh72IaYqZ/4luFslWxshuAl9XO/UDBwL0zkBOTuFDOGSnIpvC2K
 ghDx+G7t1rgTCzZ1eYX2ATeS0HHUWhnoRkCiIxhWU6R2fCsmzIUcVIf4FaaAW028gQqO
 Y2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=Y2IRWYRCXP90xJ9XQ7tJytxEdFc5lREhwvsRosF6qJw=;
 b=T/Uf8fgEuUDISoRnPOMfj5kvUnHhZlTc+qyfJNcKhoAEwFxdHdYdCUokL44oRxpeLb
 1RAgekbnerIPFOshPgkS6Fcf9/rJvI6GHjPo+uA/qjNqiLdDT68ZjDFU4xr8qSHQTth0
 lWXt7fUvggYbZoSIFxoqIXM95F0Ynnl/sbhABpgDp75kp9JLFXklmBzs1rt4l+CVejBp
 5x4JfcGjmg3npZGqe8I8bwJmjpPPWtnUcRV1Z4qznkOjVCh0nZUvc2HJyzhjYNF3YiPr
 4XpCC5Jzm0c83ndettrK71k50ix/SlOLcx5lKyVJBQga2UNFfTKQYApvxyy5gesgBtpU
 ilfA==
X-Gm-Message-State: APjAAAVUFtqlsa9KQUsUPkgexjc1m9FvjARczyotDAyUJSY0GDcirAFB
 UGqPf85d/dpPtjgVh/bRTym5RCrD
X-Google-Smtp-Source: APXvYqwqAGlMhS2HsvbKfq3h3RNclTDWKBeGELprtaXy7aaV1RouMYJRoOEVwCdzcpdAQQAo85m9yg==
X-Received: by 2002:a5d:694a:: with SMTP id r10mr1466972wrw.345.1559730789906; 
 Wed, 05 Jun 2019 03:33:09 -0700 (PDT)
Received: from [192.168.111.137] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id p2sm16358911wmp.40.2019.06.05.03.33.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 03:33:09 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
 <20190530153018.GF13432@meh.true.cz> <20190602120630.GH13432@meh.true.cz>
 <fe1c4aa1-8423-9b80-7738-e346d4e23edf@gmail.com>
 <CAHMvWa4t4VM0o-Wgg6iZv--UjL6n+Hyt0y65QRxF4sbviVM3tg@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <f5d2b7aa-18f9-e1e1-8a2a-9c9e303a6ff5@gmail.com>
Date: Wed, 5 Jun 2019 12:33:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAHMvWa4t4VM0o-Wgg6iZv--UjL6n+Hyt0y65QRxF4sbviVM3tg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_033312_335705_7DCD960A 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] EFI images for x86
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
Content-Type: multipart/mixed; boundary="===============7824756525034249869=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7824756525034249869==
Content-Type: multipart/alternative;
 boundary="------------A439E6F685CEA58EB77BEA3D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A439E6F685CEA58EB77BEA3D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 05/06/19 07:22, John Braley wrote:
> Also tested on an EFI only Asrock J5005-ITX. Builds, writes and boots 
> fine. However since it is not from 18.06 dev and is built from LEDE 
> you really cant do anything else with as luci wont install via opkg.
>
> If the commits can be pulled into openwrt-dev, I can test it on my 
> Gigabit connection.
>
> On Sun, Jun 2, 2019 at 7:59 AM Alberto Bursi 
> <bobafetthotmail@gmail.com <mailto:bobafetthotmail@gmail.com>> wrote:
>
>     On Github there is a PR about adding EFI image generation
>
>
I'm not sure about what you mean with "is built from LEDE".

I built test images with luci, available here

https://mega.nz/#F!HipgRIyS!_VxhEB5nqhU0rpmU4Rr8Tw

since I have built them directly from the PR, you may or may not be

able to install kernel-related packages from the repository.

If you need specific packages in the test image I can include them.

-Alberto


--------------A439E6F685CEA58EB77BEA3D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 05/06/19 07:22, John Braley wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAHMvWa4t4VM0o-Wgg6iZv--UjL6n+Hyt0y65QRxF4sbviVM3tg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Also tested on an EFI only Asrock J5005-ITX. Builds, writes
          and boots fine. However since it is not from 18.06 dev and is
          built from LEDE you really cant do anything else with as luci
          wont install via opkg. </div>
        <div><br>
        </div>
        <div>If the commits can be pulled into openwrt-dev, I can test
          it on my Gigabit connection.<br>
        </div>
        <div><br>
        </div>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Sun, Jun 2, 2019 at 7:59
            AM Alberto Bursi &lt;<a
              href="mailto:bobafetthotmail@gmail.com"
              moz-do-not-send="true">bobafetthotmail@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">On Github there is a PR
            about adding EFI image generation</blockquote>
        </div>
      </div>
      <br>
    </blockquote>
    <p>I'm not sure about what you mean with "is built from LEDE".</p>
    <p>I built test images with luci, available here <br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://mega.nz/#F!HipgRIyS!_VxhEB5nqhU0rpmU4Rr8Tw">https://mega.nz/#F!HipgRIyS!_VxhEB5nqhU0rpmU4Rr8Tw</a><br>
    </p>
    <p>since I have built them directly from the PR, you may or may not
      be</p>
    <p>able to install kernel-related packages from the repository.</p>
    <p>If you need specific packages in the test image I can include
      them.</p>
    <p>-Alberto<br>
    </p>
  </body>
</html>

--------------A439E6F685CEA58EB77BEA3D--


--===============7824756525034249869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7824756525034249869==--

