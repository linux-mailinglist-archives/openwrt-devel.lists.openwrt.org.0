Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE29F87C11
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 15:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o8be67VmFlFgoNKhaPoiTy8e4StG2SpPAvRbpE4xeW4=; b=BcIydwouDYvvjkqSw2SzxCkaN
	hHBXzSK7iwa58mjuM0yXRntv/pMllodhfQiH0t57yJSMoJTy92indIvRJXn8EoIrPB73puGecKu99
	sffZu2erAa2foVUiGBfFsIv2CYvJfxpTGcr6KjEiNWSXW7pLB5PSsjG3H4Sx19XYzFKex8mDqeMSK
	hRh6i4Yqa8DpZAiRvzmrVSqWtFGePGVXvvN13j42atPgKRUHzz1ORMl8wZYHlIcmovKt3rmHMJk7P
	u5luE7LsSLcleKXaZXXFb4BIHkjNj6yhGU/F7pM25zNA/OIXjaNUPCEbewQpwwI5JKcs9hjjFhhQj
	AtnBthArQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5HX-0000rH-5Z; Fri, 09 Aug 2019 13:50:11 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5HI-0000q9-TU
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 13:49:59 +0000
Received: from [192.168.100.149] (unknown [172.20.6.13])
 by mail.nic.cz (Postfix) with ESMTPSA id E9443140C52;
 Fri,  9 Aug 2019 15:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1565358592; bh=7pnIB/l2S8LJ+HonPeVnlOFkozs6wxG23xe9JocmOOk=;
 h=To:From:Date;
 b=k4wa3RZlMGt/Sc8xAMyMMO3iwZ9GoCVnYOA0g0020z53Qebzn887uYbdtUBbASwX/
 2Cd7F4RDvFM4NSSAjlEPlV5/lcc5f4326i1YZ1BgV/J+G3seQxsQuFBQKkLZVh/ZG1
 lCa6+ZxSU3qfqpGM9wHAr0cciFDMS6VkjhBLAUGM=
To: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
References: <20190316175254.GA7505@imp.flyn.org>
 <96baf362-b7e7-0b9e-b984-baf15a60542c@wwsnet.net>
 <ee7f6b01-3d2a-4798-f169-9923550ecc84@nic.cz>
 <65835557-3efc-d598-c85a-e23cd62b0bd7@wwsnet.net>
From: Jan Pavlinec <jan.pavlinec@nic.cz>
Openpgp: preference=signencrypt
Autocrypt: addr=jan.pavlinec@nic.cz; keydata=
 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
 rj0rIUg4FQ==
Message-ID: <7ce72273-acd6-accc-021d-bd6c8c8ee6ba@nic.cz>
Date: Fri, 9 Aug 2019 15:49:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <65835557-3efc-d598-c85a-e23cd62b0bd7@wwsnet.net>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_064957_393795_091F58E4 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Meson/Ninja build system
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5766099130649919586=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============5766099130649919586==
Content-Type: multipart/alternative;
 boundary="------------4A5603BFF4CE5994AA099974"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4A5603BFF4CE5994AA099974
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

just for the record, I just created PR with Ninja and Meson
tools/packages and will be glad for comments
https://github.com/openwrt/openwrt/pull/2312

Jan Pavlinec


Dne 18. 03. 19 v 13:41 Jo-Philipp Wich napsal(a):
> Hi Jan,
>
>> I'm trying to add ninja and meson to packages feed. The reason for that
>> is described here https://github.com/openwrt/openwrt/pull/1871 and
>> https://github.com/openwrt/packages/issues/8315 .
> great to hear that! I think eventually there should be a
> "tools/meson/Makefile" along with an "include/meson.mk" similar to how
> Cmake is handled in Buildroot.
>
> I don't think it is necessary to actually add a Python 3 host build as
> well since the Buildroot already build-depends on a system Python, but
> only on 2.x while Meson requires 3.
>
>> If you want to look at that, my test repo is here
>> https://github.com/ja-pa/meson-turris but it's not ready for primetime
>> yet...
> Allright. Will check it out, thanks!
>
> ~ Jo
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------4A5603BFF4CE5994AA099974
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>just for the record, I just created PR with Ninja and Meson
      tools/packages and will be glad for comments
      <a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/pull/2312">https://github.com/openwrt/openwrt/pull/2312</a></p>
    <p>Jan Pavlinec</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Dne 18. 03. 19 v 13:41 Jo-Philipp Wich
      napsal(a):<br>
    </div>
    <blockquote type="cite"
      cite="mid:65835557-3efc-d598-c85a-e23cd62b0bd7@wwsnet.net">
      <pre class="moz-quote-pre" wrap="">Hi Jan,

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">I'm trying to add ninja and meson to packages feed. The reason for that
is described here <a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/pull/1871">https://github.com/openwrt/openwrt/pull/1871</a> and
<a class="moz-txt-link-freetext" href="https://github.com/openwrt/packages/issues/8315">https://github.com/openwrt/packages/issues/8315</a> .
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
great to hear that! I think eventually there should be a
"tools/meson/Makefile" along with an "include/meson.mk" similar to how
Cmake is handled in Buildroot.

I don't think it is necessary to actually add a Python 3 host build as
well since the Buildroot already build-depends on a system Python, but
only on 2.x while Meson requires 3.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">If you want to look at that, my test repo is here
<a class="moz-txt-link-freetext" href="https://github.com/ja-pa/meson-turris">https://github.com/ja-pa/meson-turris</a> but it's not ready for primetime
yet...
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Allright. Will check it out, thanks!

~ Jo

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------4A5603BFF4CE5994AA099974--


--===============5766099130649919586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5766099130649919586==--

