Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BC25DF2F
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 09:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiVxzwEk24K3sRNTk38g5RvlwdbBFL1t5G437htARFg=; b=ax7pnvvsRipgbP
	gdpg7bPZltjhyqV53UyLYoOm0K0M6JMHerCrDU7j5n0/Zjwo2xMSYGyIfqShrYI/NyYI336KKCGuI
	rFBt1IW4GtQp9pL+dSJmRENwNo2mTRUTaQzLZ8oGr2r0taG8zuDiA05tbh1A3wlLNvuUcbHvDHB4A
	tYADsbaHfU/zfP3ty/uq4AAN5RomStYEQomcie8ro17z0lSKCuYXzcrEnPJM8QOGUStDC4g3Fc0kU
	/u165KRPlCT0tPZ7RoSoP7IYhL7w6LwYhzQvzh/p4NCRRmBteexaWtntbo1ttnKwlcGpVwmOjBzDG
	fUGsUiGHaeMuJHD6bQ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hia7g-0006Uu-Hz; Wed, 03 Jul 2019 07:56:12 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hia7U-0006UQ-5d
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 07:56:01 +0000
Received: by mail-yw1-xc43.google.com with SMTP id l79so637799ywe.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 00:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rEINL0eRA9YkDOrx0WDXIU4sIpEmWRmb5LZ8shNKOs4=;
 b=n/u/Rmdj1hfSjNP+l1OoskO8ItyBJr/tmR203m4W3ufhtR/2V5LU4Ijk+xmj0BPA//
 eqGg36rTWKkKomdjLFNdBaF6awmu2v92fjKnpoeCdyCP4IC5fPomT3a1qpuKzEX+a7gS
 pZ7Ev949UfwhYmcH5ldI4IIQMfoIKb+MzQZ3cISQDjgmQdv9Qj2Ogwx8rfISueeoVzds
 f59N5JlMEtiXyZZlgKWeoFQjHl/Uikn4dkJz8HlXykESb9+t5Pej2Tks3BzQhzp4mkzV
 cPsyWQxope7xVu7sY2m8VeAZsaES0M5Nl5YfMy0jFv+wbfLsgDgAc6CIWg9YO+37uMX4
 HZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rEINL0eRA9YkDOrx0WDXIU4sIpEmWRmb5LZ8shNKOs4=;
 b=oRDFcGZzcN0PAyCsWdDZ1vXtDiXfIIw9DIsLnzJsX1IBtJApfbpSGloOaAsPiyjtPv
 lQ6llVNK/kKhRS1Q7+WAppS6f7tMTmyhxBuSnwK5XLarAkU2gdAbD/ISeU9VaZbAq/pN
 9iEWKnzN1T4Him7ZX782obhp1s7JUlTG0JKW1vMLd8OkY3oj06sos266m04fXokTrFig
 5w7lPE0zyf3SYdRWtsXpIXdI3qesaMRN5XMPjKwxB2EQN7f3THoQLxganEbnHwoK7X9w
 HVoDOzmiSWTefVOFHBclLq3cQ5sa5dp/i3hmIwuszQtgRxPPMbZBij2oTwIKfe7VcYFL
 4Xtw==
X-Gm-Message-State: APjAAAX1VBh6q8JGs727fyn3Ryn6Q5FwpQNEB2Wa7SjcEyfbXa2IF109
 SIIeZDFlqJGWavZAehwzAq55mhoKdvSOescD+so=
X-Google-Smtp-Source: APXvYqzcJG0GbnwJwnRmJsK1qfBWwPRVygA0IFU5C8LqsRG+iVsV+N3LCQ2PlWoF0Zc1l5mDxviKBdTETwY1kNh4pQ0=
X-Received: by 2002:a81:a611:: with SMTP id d17mr21241918ywh.131.1562140558954; 
 Wed, 03 Jul 2019 00:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
In-Reply-To: <20190623092448.27880-2-kristian.evensen@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 3 Jul 2019 09:55:47 +0200
Message-ID: <CACna6rzJXFTuwxAJgou=R9jcY9OR3MRmxqEoZaSSyjqdTYDbHw@mail.gmail.com>
To: Kristian Evensen <kristian.evensen@gmail.com>,
 Alex Maclean <monkeh@monkeh.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_005600_215461_448ABCD3 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 23 Jun 2019 at 11:25, Kristian Evensen
<kristian.evensen@gmail.com> wrote:
> This commit makes the following changes to the WE1026 DTS-files:
>
> * The parts that are unique to the -5G-version (LED and 5GHz wifi)
> are moved to a separate file, so that WE1026.dtsi can be referenced also
> by the DTS for the -H version.
> * Changed button from polled to interrupt.
> * Use the generic "flash"-name for the spi-nor node.
>
> All changes have been tested on the WE1026-5G-16M and work fine. I.e.,
> the device works as before the DTS-changes.
>
> Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>

Why you didn't cc Alex, so he can ack your relicensing? You also
didn't care to let us know we need his ack!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
