Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982C511427
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 09:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77ozcJrmWqvMYNBG3UGRdkMLoEOiRI9GAujVGljzu8A=; b=RgzB2pYbgjCmbb
	1Hpoco/P7DoOQd9PN1Ys4Q4robElmDtUT4xka/glA8X2mjLFEXm0t1Px/YYyj9mOK1Ad8PD5BWR43
	fmV6ch4JhwPiJmQi2j8ZQ+Ja5RxL1uVL95AJyWRWeqV1fAjqJLxajn44iMTjhuaKkOzoN3Orw4hYI
	5L60fjnEMnKVzSDYf81XBHAT7yY6u7XKGIUAb1bIbKftJPwpQ6oITExPQGYymZUCHzQdazXyQ5gD6
	xCO9wd9IF4aGTd/xdamQxXYRH/Nv+ZVkerpuIIP/M38nWjqTU/tIPX92Xtp5+eeguWErMV38YY0c+
	wxxHPQxMRJRNCbR0wA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6Bo-00015t-Bk; Thu, 02 May 2019 07:31:32 +0000
Received: from mail-yw1-xc32.google.com ([2607:f8b0:4864:20::c32])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6Bi-00015V-Ek
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 07:31:27 +0000
Received: by mail-yw1-xc32.google.com with SMTP id x204so866175ywg.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 00:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GdXuIQUrEtMskr+zygsnK6OckjFOjkRR011fjCpC1oc=;
 b=jdIo9CCs8XCcqdEhWOT1TVT5vydXSw9qNJ7RGhovIgcrId8KnknRe2KWOWiJFj9mEA
 aLvDYMxfs8lNanmoFueahvO37XbK1Wf3bK90GY4V9extNH7cIVXMmBFoXOf/AQkP7uu2
 TIZFfH43277qM/zeYZrYjQ7yyarElT3cgwQ+5m8BVERYsp4MNCDK4133R3k60KNG8Jqa
 9fheB9KD/1ybTmjE/SQFk2t3m3r9Ep1kIG9BnOizbiQyGJPC6q/YfSTy9mNQv9a3PJVX
 1GvHuMxWSciFo1gEai+ZPJA2b8KgCmos687DOB1n25euT12tH/j5M4ZzqCoO+DZbh3zD
 AJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GdXuIQUrEtMskr+zygsnK6OckjFOjkRR011fjCpC1oc=;
 b=ru+5j71XKNelycr8iIezJIvQcZERI8WHLZEBoAHNG1KTdFHTd7RoBNpE1LQUC4dVmk
 X/+CT1bme5vOwve5mMY9Ovmcjirysg7O0zZS8GlZsZsPUpxD7RxFH/JtL0QJweFD/112
 kPXw8XluOn9V4srLwraT0U4M46Emr+xdGuj/ppmNTPEGaS/JBWpZlDrjSjq2jBHM77zN
 JJU/39wSpgXTI1qAFN6VAYqsYAobSX6zNQf6mgdw7Ms67jOWtBrZlUuiWM6Gc8HLf/Sl
 acyhPB0R4tD6NR3iqw47zOSiKtXrPvdSOZtBi8na9/Chwu//VOe9A6E+FpAxMExer3YA
 6pLw==
X-Gm-Message-State: APjAAAWQDe6Zxp96h80Cupc0LfUuz8em5ZPDfh3pFZFm1rTsgX8GaNpd
 Ys/4WoWup9a5o7IyZydx6y6GMwjA22moNZnhoLQ=
X-Google-Smtp-Source: APXvYqy+alY2d8a7jkJgF/vgttrOCaDIn7ee78KLnRSs/tKNfb/Swfo33/cl79UyU21Ikyp9RucIVfJuTC69Q6X9xVY=
X-Received: by 2002:a81:62c6:: with SMTP id w189mr1660358ywb.377.1556782283822; 
 Thu, 02 May 2019 00:31:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190425121752.14203-1-kristian.evensen@gmail.com>
In-Reply-To: <20190425121752.14203-1-kristian.evensen@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 2 May 2019 09:31:12 +0200
Message-ID: <CACna6ryn5xDYz-Th43P1HwpB92WgQ79ha=Bocn04FEJTD62vAA@mail.gmail.com>
To: Kristian Evensen <kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_003126_495234_CBD7BCDF 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c32 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Add support for Head Weblink
 HDRM200
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 25 Apr 2019 at 14:18, Kristian Evensen
<kristian.evensen@gmail.com> wrote:
> diff --git a/target/linux/ramips/dts/HDRM200.dts b/target/linux/ramips/dts/HDRM200.dts
> new file mode 100644
> index 0000000000..b076f30978
> --- /dev/null
> +++ b/target/linux/ramips/dts/HDRM200.dts
> @@ -0,0 +1,226 @@
> +/dts-v1/;
> +
> +#include "mt7620a.dtsi"

Please include SPDX line with .dts file license, see:
https://openwrt.org/submitting-patches#dts_checklist

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
