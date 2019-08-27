Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921B79E4C6
	for <lists+openwrt-devel@lfdr.de>; Tue, 27 Aug 2019 11:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JlKRYjgfRWc1YpXyfy3ZS3ytGmxS7sxUiWQ0hOBod1Q=; b=m/eBwI3j5N0vUQ36PoHhyPkqCK
	DCktGBgm9D1TiGV8QImG2b0g9zj+v+NF9NeEQ4DDD/PEB6sKMCfJ0PQKAi3U/UFk6GXP33j9QGM6I
	san7azanYz9SwfXQrWlFth9kEHrhcigEisNSlG6mC1Li6J+QuJzymGjVmUtzR4ivoIq2VS9TaW+56
	xyENXs4SVkhQ63H6bTbugzkOwtGiDk/2IhaqnElBmqxgVglikCUxbjVf9JKHXwSge6h3/iZIIUiMR
	ndC95DXMsx66/VZMZ+Sm4/fCJWj1qcZQrvMpOMmbqkwMWG0/GoY2kK9kLbUvU24kz/cCq6o3x5Ivd
	8q/6J8Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Y6k-0003xa-0e; Tue, 27 Aug 2019 09:49:46 +0000
Received: from forward103j.mail.yandex.net ([5.45.198.246])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Y6L-0003x5-N3
 for openwrt-devel@lists.openwrt.org; Tue, 27 Aug 2019 09:49:24 +0000
Received: from mxback27j.mail.yandex.net (mxback27j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::227])
 by forward103j.mail.yandex.net (Yandex) with ESMTP id 5B73467418F3;
 Tue, 27 Aug 2019 12:49:12 +0300 (MSK)
Received: from smtp4j.mail.yandex.net (smtp4j.mail.yandex.net
 [2a02:6b8:0:1619::15:6])
 by mxback27j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id TfaAs04TWv-nC08KQpc;
 Tue, 27 Aug 2019 12:49:12 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1566899352; bh=cec9OefHbm/ayBmRzn70Aoaw92VaUOl9k24x5juRqFM=;
 h=Cc:To:Subject:From:Date:Message-ID;
 b=JPq69lq7ve5zjjUWWaffxt+BEYYhurD9W8/NMLnjYBn8cXbtXLoaKrt43LKVTGxVJ
 H1pfmJRmldEp1L2JtvhtkLdsK+JiSneXUusNubyvHqj6MARLOJ3GJy+oU5mKvXxVh2
 CQxbUgxxVi/qu2FBcTTZ9qOZ84kz3RqeXrudloEk=
Authentication-Results: mxback27j.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by smtp4j.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 xa5KOP2y76-nB0SvfIO; Tue, 27 Aug 2019 12:49:11 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Serge Vailugin <vasilugin@yandex.ru>
To: openwrt-devel@lists.openwrt.org
Message-ID: <bb14fde2-6054-c8d3-a147-d800c18e9361@yandex.ru>
Date: Tue, 27 Aug 2019 16:49:10 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_024922_247247_3C53184A 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.246 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vasilugin[at]yandex.ru)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 0/3] kernel: add support for realtek
 rtl8367s
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 Chuanhong Guo <gch981213@gmail.com>
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
v1 -> v2 coding style and indentation

---
serge


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
