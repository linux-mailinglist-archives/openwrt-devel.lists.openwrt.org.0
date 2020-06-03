Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3001ECE62
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 13:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x9/1NFbZRtI5lUEWf9PU2mSPWKwGn0skVL5SoZzEUuU=; b=uifoxR62SolPRsA3s3rE2jizSZ
	DPzFrtGmpKAfsLXRZXehYX6T1AUb3GgQA+WhT7F9nTdW6ULiBqTSgNOgQ+9A4QulKZpcWazfeXlPp
	WC1vKyvN5yFIBrTBDDXuIamtV133VaKmW2Mq1pf+28NhmHdfLuL+DzgVhg2AxCjxaL7Leb7by/ODF
	H1ww2dfVd9REqeSwrNOMpDqSZZYXDzmNAlb7fY9Oi4zlV6B8VCqvPB9xuIYbUxbDmcMYStsr8ik1y
	5WVdT+xDhpDjosK+l0OHQUQUSswrIKwCbU4ioF67OC37B6ztyiu6w98/twu32eg6O/zVseuRoAD9x
	iZ+Uuj3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRb9-0003IC-I2; Wed, 03 Jun 2020 11:30:19 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRat-0003Ed-M0
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 11:30:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 66816447C;
 Wed,  3 Jun 2020 13:30:02 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d4e708c3;
 Wed, 3 Jun 2020 13:29:47 +0200 (CEST)
Date: Wed, 3 Jun 2020 13:30:01 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20200603113001.GA9798@meh.true.cz>
References: <20200520123305.30994-1-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520123305.30994-1-pali@kernel.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_043003_866135_483FF138 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH iwinfo] iwinfo: add device id for
 Marvell 88W8997 SDIO wifi card
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gWzIwMjAtMDUtMjAgMTQ6MzM6MDVdOgoKSGks
IHBsZWFzZSBuZXh0IHRpbWUgZG9uJ3QgZm9yZ2V0IHRvIGFkZCBjb21taXQgZGVzY3JpcHRpb24g
YXMgaXQncyBtYW5kYXRvcnkuIFRoYW5rcy4KCj4gU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIg
PHBhbGlAa2VybmVsLm9yZz4KPiAtLS0KPiAgaGFyZHdhcmUudHh0IHwgMSArCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9oYXJkd2FyZS50eHQgYi9o
YXJkd2FyZS50eHQKPiBpbmRleCAwN2Y2MWI3Li42NGFiNzA4IDEwMDY0NAo+IC0tLSBhL2hhcmR3
YXJlLnR4dAo+ICsrKyBiL2hhcmR3YXJlLnR4dAo+IEBAIC0xNzQsNiArMTc0LDcgQEAKPiAgMHgx
MWFiIDB4MmE1NSAweDExYWIgMHgwMDAwICAgIDAgICAgICAwICAiTWFydmVsbCIgICI4OFc4ODY0
Igo+ICAweDAyZGYgMHg5MTM1IDB4MDAwMCAweDAwMDAgICAgMCAgICAgIDAgICJNYXJ2ZWxsIiAg
Ijg4Vzg4ODciCj4gIDB4MTFhYiAweDJiNDAgMHgxMWFiIDB4MDAwMCAgICAwICAgICAgMCAgIk1h
cnZlbGwiICAiODhXODk2NCIKPiArMHgwMmRmIDB4OTE0MSAweDAwMDAgMHgwMDAwICAgIDAgICAg
ICAwICAiTWFydmVsbCIgICI4OFc4OTk3Igo+ICAweDE0YzMgMHg3NjAzIDB4MTRjMyAweDc2MDMg
ICAgMCAgICAgIDAgICJNZWRpYVRlayIgIk1UNzYwM0UiCj4gIDB4MTRjMyAweDc2MTAgMHgxNGMz
IDB4NzYxMCAgICAwICAgICAgMCAgIk1lZGlhVGVrIiAiTVQ3NjEwRSIKPiAgMHgxNGMzIDB4NzYx
MiAweDE0YzMgMHg3NjEyICAgIDAgICAgICAwICAiTWVkaWFUZWsiICJNVDc2MTJFIgo+IC0tIAo+
IDIuMjAuMQo+IAo+IAoKLS0gCnluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
