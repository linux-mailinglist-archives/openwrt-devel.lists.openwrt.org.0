Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F8E2B4BC
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 14:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SexKHYQlVFjbW+MD3dj6uYih76bFnLFSSp1JxPQj/kk=; b=FRww34cfx3ogcp
	ZQ1uhxwwYtyZY+zAS9MBbRi1qIhTyN+tBFFnjFOYbLfSfjBBxrIO3wLoBW5SBWUjCIaF+rBAaNEb4
	bYc/Bp5zpfQKq8GbagjHaJpGaxJHj4ysY4xFriljwgN768E3rVYnuDmPZjd/N/AODkeZnubNnt9ek
	byzP9bpdOn+1CmzWQNEJjdf3vo7giAyilWapyk80L388TsH4TfhT9hVwr7MWvl9rUEnHus4OArMJy
	N7Ti5JcKe6LCvIJ0b4a4PkVYYwOdmZRsAIslLVndJDL9h88YPKrtf4tjUGSn6mLprpJNrL2bKxux2
	C48aTsMej6+A2ULH9tJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEY1-0005Oa-29; Mon, 27 May 2019 12:16:13 +0000
Received: from azzurro.ezplanet.net ([2a04:52c0:101:5ec::4eb2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEWN-0002I2-Er
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 12:14:40 +0000
X-Virus-Scanned: amavisd-new at ezplanet.net
Received: from mail.ezplanet.org (gemini.ezplanet.org [192.168.10.19])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by azzurro.ezplanet.net (Postfix) with ESMTPS id 0D52BCF
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 13:13:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ezplanet.org;
 s=default; t=1558959213;
 bh=KCAdLateD01ORDglA9hnmLhC2nt6uySofjluJ63HN18=;
 h=To:From:Subject:Date:From;
 b=if41Kbz97wQRiMQO9gAUQnM53sVu0vq1Pm/oeFhIExJJB1GdK1ku9rLIvyb0F/hlC
 6yET5APDEGVwpBgAAOxb7iYXI9dYhiWwQU9brMLKC+jmDjRZME10SgNVxrc328q7Bg
 g+Orze/CdO2z9S+M13Y+dU1rdHDV7DbROAFYVdPM=
To: openwrt-devel@lists.openwrt.org
From: Mauro Mozzarelli <mauro@ezplanet.org>
Message-ID: <0e9a3bb4-6b9b-2993-28c9-52205551850d@ezplanet.org>
Date: Mon, 27 May 2019 13:13:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051433_275748_25252CF9 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] FS#2193 - netdev LED Trigger for pppoe-wan
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This bug has been confirmed by a few reporters. I was wondering if 
anyone is looking into it and if any further feedback is needed.

I am happy to help with testing if a developer would like to get in touch.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
