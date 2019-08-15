Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A8F8E646
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 10:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FaOUqesPkfTkUcjf4w1R8QZ3ONwLOdKrIHhJ5r6aEVQ=; b=kS2pObYsoalD1B
	w+1mB0olCC/xSPdoc4A+YrefzKmE8QDjSj1qrBOxo0DgIvIMY8LAR2VRMp2j1xQhoAxIXL912fvQJ
	D8o3YADfW9Ah04g5CE3VL+o+MSLZt8DXDF40iO1KsORXc/L4l7BmYwaTHTIj3TU+Ow/2mjO/6L8cT
	g+XqSktB/GMr1b7jNiTRcHZ9Jaxfz1/t+7CLHYTY6OmhB+AgbyVTGPR1yBl0OywQmyLec9UmbJJl2
	RSuqojf1HSkG1Hx70lnsxkBVrmnGf8fD0SsY6XxBZpnDuqqxPzmqZ14x4h97OL6snt2SQiV/BCdG8
	7R8l12YzrRChCPML1AKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB5n-000675-2B; Thu, 15 Aug 2019 08:26:43 +0000
Received: from forward104j.mail.yandex.net ([2a02:6b8:0:801:2::107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB5P-0005zu-MC
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 08:26:23 +0000
Received: from mxback5o.mail.yandex.net (mxback5o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::1f])
 by forward104j.mail.yandex.net (Yandex) with ESMTP id B3F324A007D
 for <openwrt-devel@lists.openwrt.org>; Thu, 15 Aug 2019 11:26:12 +0300 (MSK)
Received: from smtp1j.mail.yandex.net (smtp1j.mail.yandex.net
 [2a02:6b8:0:801::ab])
 by mxback5o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id Pgydi79PGu-QCjC7C32; 
 Thu, 15 Aug 2019 11:26:12 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1565857572; bh=1++G9aQAoU5ZM0iDYG4VUWJYGKTpGHopQC2aR6ptCjo=;
 h=To:Subject:From:Date:Message-ID;
 b=m8o9zoHNhdIJm7I5LNNK2ieuZ1q/GQTDYeW4MvRg39hDutlTu6YGj5MpZFpUbmmRN
 eAmQaxtKPnXrvhSSysOtsBgNy9L+EdjxJjHuaBoz0X9Dx5zviSYxlqxy726rJroeTw
 9BrvW6LuUgkhi1AYENBbjUoBvrhf7rgKWv3pxS2Q=
Authentication-Results: mxback5o.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by smtp1j.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 j0VVyD3AIV-QBeeqAOW; Thu, 15 Aug 2019 11:26:11 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Serge Vasilugin <vasilugin@yandex.ru>
To: openwrt-devel@lists.openwrt.org
Message-ID: <b766be95-578a-cfb4-38b2-8aaae2273523@yandex.ru>
Date: Thu, 15 Aug 2019 15:26:10 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_012620_229525_63F597C4 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:6b8:0:801:2:0:0:107 listed in] [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vasilugin[at]yandex.ru)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 0/3] kernel: add support for realtek rtl8367s
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

Adding support for tplink archer c5 v4 some problems arise:
1. Device use unsupported rtl8367s switch.
2. rtl8367s switch have non default 0 phy address at mii-bus (29).
3. rtl8367s switch is connected through unsupported extended interface 2.

The patches resolve these problems. Many info and sources were used from
forum topic [0]. Vendor driver and u-boot identify rtl8367s as RTL8367C
so I keep it.
All thease patches may be backported to previous release without changes

[0] https://forum.openwrt.org/t/support-for-new-archer-c5-v4

---
serge

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
