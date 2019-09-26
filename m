Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DCFBF4F8
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 16:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0gmCEbgktDsPjeZx4lG3YRVnXsgow9jEh8cr3Yx5qdI=; b=gNYfbMgwFZZYdGLWXE+p8BWDj
	jexBFXmz2Ru5bTymHqe+KWtTWzfwzExOu621bh0Rja4ahNz9625VEKeYE468nu4OgepZVKCLKc+/K
	iY4fBMqJm6Q3hdZSisRTPTuBhmmezAltZ3tz6qdlkEWgmM844kpoTfTmkDoeYtyNzFxuxARCKop4T
	vypCIiCKvyGk5y2auZhBIZ+EKya96PMFI6u1pzbVseCCsT4A3/I+3xSETu+3j4kJAl3GRC4IMLYsH
	rj8nstbfD5Nkm8L7a3Nif51q4jn9mWy047JbI8dAtAraw/KFGEEaeMiMjI/kIkgWetC7jQx616mcq
	8fbqP86Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUfm-0008DA-A7; Thu, 26 Sep 2019 14:23:10 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUfc-0008C3-7z
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 14:23:01 +0000
Received: by mail-wm1-x32e.google.com with SMTP id m18so2816024wmc.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 07:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=wsOmluRjlRD/b2r7V6pNIXzyoJkLYMkT/batep89akY=;
 b=qiEEZtTvkmvlsBGY1pF44tQbbh4vPZkgVqgEJ6S3cwPKpiFRccxJQIr6j/v3jhjqmL
 1X/TB5YFZM9AEmZzoUbr5CQ83FTjcxl7OLZ19l38PJ+REfrwr3hWHg42fjApy1fEI3JM
 uEzF1C4xZD8cLtmda6+YkLv2Mi7Wa3WtG3/yS1sgEKhrxo0vcohSJvjllhsQeT0Ld/Zw
 X3efOKneWOLIttN5SUWwSR9gbHvg4lGxc90ML5rP0GLOVcPvCpO8XHYLSPsBtc7C15Hs
 /j9OqtRk9DC9Q6RS+7dmmoKeNAZ52F5WSfcGEeVUDCW1S1CsOC/jdwylct04BauztImO
 9d/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=wsOmluRjlRD/b2r7V6pNIXzyoJkLYMkT/batep89akY=;
 b=q9XCfErz0m6p/wiX3ebm7MvEoUgbhQ5b3Z6Y+HPK1eqLL0Mi2W1jDPMalZ+nXZtc7H
 6dCCBiqi9mT/Zw9NahanDIZYfkl5otUv9DHFqLREuWNCIAV+oskw+/hFSoo29Hi9uKlm
 2RKz0Vi/7dATSrQB9oyHwGYTVKvBvKoK0FEEPtEUH36s8yNYrzWa7ARUzsGx1ClPzCJa
 Yxws2prGoLNq4UQXlWbGUk1lMH/YAeo4okoDAOMOp6f+wC71c+FuxyVB8bFgOZ2Ipb1c
 muJc0oS5CGuMoV0X5pJ2+DQjPRJVI7PV5EtsD2BDBqo/jgGZK1j6TfF9/p7dsiq7+Eum
 yjFw==
X-Gm-Message-State: APjAAAVKCpjWOkYXJyKovEpILJuxQLMnvrNOIR9Qcal26uD8LI4sSMIf
 Z4zQXnidaTOiHKQ467RzxL97Yyj/N2I=
X-Google-Smtp-Source: APXvYqz7H61xMHa6w6lYCh1ANBiB9oITy4Yzk92qnpryXP1JayxfXVGIN/huxYZmPfWM2EMh7RiJ+w==
X-Received: by 2002:a7b:c203:: with SMTP id x3mr3486088wmi.8.1569507776024;
 Thu, 26 Sep 2019 07:22:56 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id v64sm3034697wmf.12.2019.09.26.07.22.55
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 07:22:55 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <5d8c8406.1c69fb81.7177e.8639@mx.google.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <aed47c92-0cab-c621-8552-c349da25c0e8@gmail.com>
Date: Thu, 26 Sep 2019 16:22:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <5d8c8406.1c69fb81.7177e.8639@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_072300_311988_23C4C8AD 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] openwrt based router
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
Content-Type: multipart/mixed; boundary="===============1129130114191646844=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============1129130114191646844==
Content-Type: multipart/alternative;
 boundary="------------B868E897A2F8B072C0D0A18D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B868E897A2F8B072C0D0A18D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 26/09/19 11:25, sagar jain wrote:
>
> Can I sell openwrt based router
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


If you meancreate and sell new routers using OpenWrt as firmware,

yes if you follow rules in trademark article here 
https://openwrt.org/trademark


-Alberto


--------------B868E897A2F8B072C0D0A18D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 26/09/19 11:25, sagar jain wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:5d8c8406.1c69fb81.7177e.8639@mx.google.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Mangal;
	panose-1:2 4 5 3 5 2 3 3 2 2;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Can I sell openwrt based router</p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
    <p><br>
    </p>
    <p>If you meancreate and sell new routers using OpenWrt as firmware,
      <br>
    </p>
    <p>yes if you follow rules in trademark article here
      <a class="moz-txt-link-freetext" href="https://openwrt.org/trademark">https://openwrt.org/trademark</a></p>
    <br>
    <p>-Alberto<br>
    </p>
  </body>
</html>

--------------B868E897A2F8B072C0D0A18D--


--===============1129130114191646844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1129130114191646844==--

