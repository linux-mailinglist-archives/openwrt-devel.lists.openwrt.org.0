Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0C2B2AE6
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 11:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=k7m/LS4tQB/yrGVwKR8O/oSv3GS3chtK5IPZx/XpdWM=; b=GzM
	9HO8gyCoJ7j5p3F1Cp2VcqOi8i30chzhC8UnIUA0ksj0uQlG5ik5uWeDszf913gGtFXexDNuMirHA
	gDPLJCENs5vT2uncku3iTDavFYKgzOj11ona0XtZ0PFKpwT4+17jugoTYeI1frM3G3k0Mxgy6eYqt
	BZ2pSfnpVoKyXm/d+pkTiP82RsPRYGg+gWnVPxUiOdLmQRxVGJpKqjUMUAUeq8npZ2W1UEjk30iAq
	wAeDlUVnc3qW+vzbAyuyOq5UGuJVx2igvhEoxvZV7jPFagvMA0RekGf7i1vO7nFAYWyyfbZmHiYbP
	kMUtq9IE2XGXEftzrlYf0yUomh/YWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i94q7-0007vL-TB; Sat, 14 Sep 2019 09:59:35 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i94py-0007uz-Eg
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 09:59:27 +0000
Received: by mail-io1-xd44.google.com with SMTP id f4so67405145ion.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 02:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=kqXoxZ+E9EkMCAy90JtKl1hpepz5kwDugOr9QtdWNUQ=;
 b=NadbNeVJVPQ4jzPOeAhL8YM3f7gMOCuhojFdAe6yZKLlUO5oDSt90qO4hLSGDdnnmd
 BIYLdIY9yqUiEX5U0RqxaRc9cCSKYQG8xNHFQbu8oLnco7zLUUicsJat8wiLzc9LTPhV
 IRNiMANRO0hb4i+1jjQ0ArH5spdcqLt5dYoeYYiKFBxcaEFzLJE8V2dlEFl3nGY+1vDZ
 ugf4K9jDQdGoycjquIlRDPfcaiRu4sUIyMI71E/I//eqlwrF6Vv0VUXB8ccZKhKvv5Nb
 gX/W5p6VMxPWSczQY+CjgGb2XB5bn8z3I7CEU+lQKiBOxhFdvufJzD0lOBDbe2Nl2F5r
 jZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=kqXoxZ+E9EkMCAy90JtKl1hpepz5kwDugOr9QtdWNUQ=;
 b=ubDGjmp6C5ojvsli5vRPB8Q72vaGFD2LUwumK/ReS5fYB8q2oL1dLqskkBtaWCSA0U
 mSaZ+e8veZHgK5P9A8yWXRyRFUR/lVoJsjNNm2UNP9NiFTBDa35x4Yx9Mb2XnCvxdE+G
 3eeGItnTT5+/xJZA2AGDQpJUSjRb6zsglwQX3lGmuzcRNlEFquWMdBZfaV4EbUhcPMrD
 EyNIpmVNBWUhXA1HdwDYu+BklW9W8UIJlc/S+yZ9naY0rm/QD2s0hBqvWmQWiCnIwnZs
 SQKOAiju4w+m9XYEKrYIqSWxu+habAHY4enYJtumBT244yaMIItvnNF8gFOnNv679hGr
 /exA==
X-Gm-Message-State: APjAAAWUT0c8F/22YoqJcJN4lij2IUqAp6z1XVgmC8ctstqKFKxVYewm
 1ywjU4gCkuv9pmGmMDaQQlnEi/utu45Je5oEVubwuKYI
X-Google-Smtp-Source: APXvYqwpWK/2dsoulKIIH2UWnvr181rDI2gTQDXG8Y5e/deiI7JZfFV0As0UpefEk94hSHosjEiGmW9ZBNS0ejEldKU=
X-Received: by 2002:a6b:b942:: with SMTP id j63mr4256787iof.69.1568455162050; 
 Sat, 14 Sep 2019 02:59:22 -0700 (PDT)
MIME-Version: 1.0
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 14 Sep 2019 12:59:10 +0300
Message-ID: <CANoib0HNz7cFvq_6OtSPWR-ZTyARkMspxe4eawO1t9G=SW_pLg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_025926_519280_91ED1499 
X-CRM114-Status: UNSURE (   4.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] ath79 on 19.07 doesn't build on 4.14.143 kernel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Patch target/linux/ath79/patches-4.14/0027-MIPS-ath79-drop-legacy-IRQ-code.patch
doesn't apply


Applying /home/pilot6/LEDE/openwrt/target/linux/ath79/patches-4.14/0027-MIPS-ath79-drop-legacy-IRQ-code.patch
using plaintext:
patching file arch/mips/ath79/Makefile
patching file arch/mips/ath79/irq.c
Hunk #1 FAILED at 1.
Not deleting file arch/mips/ath79/irq.c as content differs from patch
1 out of 1 hunk FAILED -- saving rejects to file arch/mips/ath79/irq.c.rej
patching file arch/mips/ath79/setup.c
patching file arch/mips/include/asm/mach-ath79/ath79.h
Patch failed!  Please fix
/home/pilot6/LEDE/openwrt/target/linux/ath79/patches-4.14/0027-MIPS-ath79-drop-legacy-IRQ-code.patch!
Makefile:19: recipe for target
'/home/pilot6/LEDE/openwrt/build_dir/target-mips_24kc_musl/linux-ath79_generic/linux-4.14.143/.prepared_bdda8d3146b44452afe9accda800aa5d'
failed

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
