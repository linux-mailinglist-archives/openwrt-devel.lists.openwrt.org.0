Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED8A78D00
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 15:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4FoC+EljUdDapghUAJegRDndmtJXJMM1CxfELe1HW8E=; b=Mv0gMW2h/vi5/8
	803PngzAQIiQlanQyg6IaETVfP543pQluei5ivMbUD7pbK+fwpviaGkUzJSlm8h5DXi25sdoQTGqz
	w4nUw7FeUi7S2YRK3OZSp5Z252h0woUceuDq70ZFDcDk4MKHr9fyUy3Iiu9DrbS84JTby5NahUQ5Y
	dkV+KVLmDv/9CgrBwdknUbsKrUIf+N74YcQvBpzLi54M34vR7KbZQWYBblR6T/yAJ25zRl2W1gSUt
	vMWHtjxvgFMXLJ5wTWsC5MT7VFvQnZX7wFP9tZezdNbor/s1dUf6PcuZIGCRkHSzN9WQ1TaAqufGJ
	FCEPbNygV/iSFeu6oA2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5tC-0003Hx-BO; Mon, 29 Jul 2019 13:40:34 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5t6-0003HY-QJ
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 13:40:30 +0000
Received: by mail-wm1-x32c.google.com with SMTP id g67so49410813wme.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 29 Jul 2019 06:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=y9XibimSCOShfJdknhREyrxY6BdOqep4bc+Y9NEjMMA=;
 b=MHGN+u+nu7d5mHgN8vWNnCPtKe33QtghYQlCS/97Gc3Jzr8aTEhTiiDhFg12fm7emj
 O2iLtBKBps/QfI1rCfQvPcK6MGoDjHeQ/9OGMaDFTHgO6aXuUpLrRFz9DFhfIKLT/OWN
 mIdmnKoSQzrg3i1LY+zp3rDyVVuIlauzyi2WULtw6Dvzs1mJ1g7hUrZ2AeXhKQes4mcm
 cAIRAdOlKeGl20haha27dXXE7ThB/JuaMc3x7z6582IFdnCXECblsWqUC/tUQUz+xq78
 EOwJtsZGNhR2mB2E3VDyXb9lk/AFdQjduDoVoALf1lMkUAXz75yhpEdS0Y9mrJ7/6xMJ
 3Rfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=y9XibimSCOShfJdknhREyrxY6BdOqep4bc+Y9NEjMMA=;
 b=mG9z52Oji8MM6hNzsi6c36XQYwX+ASP3NpY8q4QIFAiVXJO+gmc7hxosWH0yUyKrJT
 aHLPCDR3BtuKrZYv7uffw453R+qRYAJwuWGuibkRGxV2xgFAAYIFnnDXOibnqr0YIQOi
 P1pE60FHV5qruhCETlM3njAvu5ueiMJNrtCqESGrhD2YmE3cH6iH1Radl2XKQaTYPOyl
 XW+DI/cOgvCf3FP5U7wzhO7c8Kbv5CylPh0r8qSGVKXkLlbhdTxh9MaiWKTFTTMIfuvQ
 zIokBZ2DcAlG1dLqk8ZMXmDYZGK/m9nmnNvy6KTW3CConUSm/iNJE5OVrnBqcdplRTfU
 eK5Q==
X-Gm-Message-State: APjAAAVyy7HshERukLLfNg4GR/FBTDfP0oFQMaglgmVBiQUyca1RTg8w
 c5B4d+Md91Ns0Oq4kE0TpJpiqubOo40=
X-Google-Smtp-Source: APXvYqz5JQxvv3xZNCow08C/N/qt0ARbdZk2/9R/UIwqTyafaGfxEf4o9MVJFCGlYNcz5QHfosRhCA==
X-Received: by 2002:a1c:4b0b:: with SMTP id y11mr74640817wma.25.1564407626599; 
 Mon, 29 Jul 2019 06:40:26 -0700 (PDT)
Received: from localhost.localdomain
 (host5-38-dynamic.45-79-r.retail.telecomitalia.it. [79.45.38.5])
 by smtp.gmail.com with ESMTPSA id o126sm57003351wmo.1.2019.07.29.06.40.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 06:40:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 567c61a6;
 Mon, 29 Jul 2019 13:40:24 +0000 (UTC)
Date: Mon, 29 Jul 2019 15:40:24 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.352.1907291535010.27116@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_064028_880130_DE03D7C0 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.7 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] Problem reading flash zones in ath79
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello guys!

I experienced an issue where I wasn't able to read all of a flash region on an ATH79 device, the Archer C60 V2.
Taking a look, it seems the MTD layer will return only 512-bytes when reading an mtd device via the mtdblock layer.
So, in the case of my Archer C60 V2:
- the first partition, "factory-boot" won't be completely readable (256 bytes will be missing)
- sameholds for "mac" partition
- same holds for the "u-boot" partition

This will prevent users from making proper backups of their devices.
Should this be fixed on the mtd layer or on thedevicetrees we're using?
Of course I don't think this is ath79 specific...

Thanks,

Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
