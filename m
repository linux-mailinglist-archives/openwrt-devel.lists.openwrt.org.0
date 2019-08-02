Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5BB801E0
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 22:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bABreXbY/9St1ryalBnjmTSB+y3nPBb4GID4kTlVegg=; b=utDIv7UTulztMsYFFsFsZj5sE
	1zZdQAddc4jQVtq1wyAcjXKpXqE9YGg+gtUVsasFMGrVVAunur+oxO62FnQzOcSINC+L+7Jpq2+dk
	WeICFmUfOh7Ig4aYy1LEXKA07MJn7AcJKFnwq5SF//tsWm9BhqCPwltblWhOmWvPUYRHtBaxk0dzZ
	pQMCOC5QwzLH9g+awtH2wUdjCZInBLXHTuSCs0R1PIGF0bkFv8Wz0n/h5G7UQp5rczj2MOONTgDWG
	UyWYrsP9iLxU9uy/pghQXsgOW2x5aNBbYSHSmQIZ3m5b0nte1th7Xk0GpcXMJKns9iKYPzvJPABEZ
	x+X//TkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hteMI-0008CJ-DH; Fri, 02 Aug 2019 20:41:02 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hteM6-00081Z-J6
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 20:40:52 +0000
Received: from [192.168.178.42] (dyndsl-095-033-090-082.ewe-ip-backbone.de
 [95.33.90.82]) (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 619F7240008;
 Fri,  2 Aug 2019 20:40:36 +0000 (UTC)
To: Jeffery To <jeffery.to@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20190515123152.27834-1-jeffery.to@gmail.com>
 <CAJXyS=gU9aa_ZWj4DKk8K_KNRN4Ury__Si9U12vT=AHzUGnUAw@mail.gmail.com>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Message-ID: <61932cbe-c1f8-a3db-db27-d1890cee4f32@aparcar.org>
Date: Fri, 2 Aug 2019 22:40:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJXyS=gU9aa_ZWj4DKk8K_KNRN4Ury__Si9U12vT=AHzUGnUAw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_134050_951349_C914819F 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: include BUILD_VARIANT in
 PKG_BUILD_DIR
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
Content-Type: multipart/mixed; boundary="===============8217896719765630077=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============8217896719765630077==
Content-Type: multipart/alternative;
 boundary="------------E5ACA9222CE2F6DD06797604"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E5ACA9222CE2F6DD06797604
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hey,

on commit 5e928acf22cdc956eabe6e4b2327b34eb0ee66da applying fails:

error: patch failed: package/libs/ustream-ssl/Makefile:10
error: package/libs/ustream-ssl/Makefile: patch does not apply

However removing the ustream-ssl part of the patch results in a working
version for (at least) all three openvpn variants!

Best,
Paul

On 02.08.19 21:15, Jeffery To wrote:
> On Wed, May 15, 2019 at 8:32 PM Jeffery To <jeffery.to@gmail.com
> <mailto:jeffery.to@gmail.com>> wrote:
>
>     This changes the default PKG_BUILD_DIR to take BUILD_VARIANT into
>     account (if set), so that packages do not need to manually override
>     PKG_BUILD_DIR just to handle variants.
>
>     This also updates most base packages with variants to use the updated
>     default PKG_BUILD_DIR.
>
>     Signed-off-by: Jeffery To <jeffery.to@gmail.com
>     <mailto:jeffery.to@gmail.com>>
>     ---
>     v2: updated PKG_BUILD_DIR in include/kernel.mk <http://kernel.mk>,
>     removed undefines
>
>
> Can someone take a look at this patch? (I have un-delegated it in
> patchwork.)
>
> Thanks,
> Jeff
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------E5ACA9222CE2F6DD06797604
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><tt>Hey,</tt></p>
    <p><tt>on commit 5e928acf22cdc956eabe6e4b2327b34eb0ee66da applying
        fails:</tt></p>
    <p>error: patch failed: package/libs/ustream-ssl/Makefile:10<br>
      error: package/libs/ustream-ssl/Makefile: patch does not apply<br>
    </p>
    <p>However removing the ustream-ssl part of the patch results in a
      working version for (at least) all three openvpn variants!</p>
    <p>Best,<br>
      Paul</p>
    <div class="moz-cite-prefix">On 02.08.19 21:15, Jeffery To wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJXyS=gU9aa_ZWj4DKk8K_KNRN4Ury__Si9U12vT=AHzUGnUAw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">On Wed, May 15, 2019 at 8:32 PM Jeffery To &lt;<a
            href="mailto:jeffery.to@gmail.com" moz-do-not-send="true">jeffery.to@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">This changes the default
            PKG_BUILD_DIR to take BUILD_VARIANT into<br>
            account (if set), so that packages do not need to manually
            override<br>
            PKG_BUILD_DIR just to handle variants.<br>
            <br>
            This also updates most base packages with variants to use
            the updated<br>
            default PKG_BUILD_DIR.<br>
            <br>
            Signed-off-by: Jeffery To &lt;<a
              href="mailto:jeffery.to@gmail.com" target="_blank"
              moz-do-not-send="true">jeffery.to@gmail.com</a>&gt;<br>
            ---<br>
            v2: updated PKG_BUILD_DIR in include/<a
              href="http://kernel.mk" rel="noreferrer" target="_blank"
              moz-do-not-send="true">kernel.mk</a>, removed undefines<br>
          </blockquote>
          <div><br>
          </div>
          <div>Can someone take a look at this patch? (I have
            un-delegated it in patchwork.)</div>
          <div><br>
          </div>
          <div>Thanks,</div>
          <div>Jeff</div>
          <div><br>
          </div>
        </div>
      </div>
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

--------------E5ACA9222CE2F6DD06797604--


--===============8217896719765630077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8217896719765630077==--

