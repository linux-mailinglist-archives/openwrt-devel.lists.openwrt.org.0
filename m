Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D13FBC5C
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 00:16:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EcEYIVKN46OhjjCizkEdSH5WUQmO/or7ioAZKaXSoU=; b=i19F7cenTKU4sj
	aU1bxmTFrU5LcCB5FrIgRoWXdT1Rjemw4NqOkgepw3h69RTgpVOwTx3yLuau7CwG3XxCmbhm+ENVg
	XP+PTQt8bHMic+ybETJSCjUQud2B67ipcFskd5NHJXyM03xaSH7z/FNZ9ihfAB+c13hJX6DRkPN0h
	iDDezEvMWZtVe108XJZgiejUHh6rP2XX0mhuWkRVNr0GMhZ60V2TtE4JVQ8EDdIBcX1qddi0K9qFR
	MKjMcYhXMWJlKFRFuuzm/fX4r7/7tTsXF1mtdwqibEhkKqjW1D86efyIDxfwCfsD/+KkwAqJFGyD1
	lxyWw0WWbPycoB32jA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1rt-0005Cj-3J; Wed, 13 Nov 2019 23:16:09 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1rg-0005CH-8v
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 23:16:00 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 2A7BBA6116D; Wed, 13 Nov 2019 15:15:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id B5427A6114D;
 Wed, 13 Nov 2019 15:15:50 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: Daniel Golle <daniel@makrotopia.org>
References: <87bltgller.fsf@husum.klickitat.com>
 <20191113200806.GA1279@makrotopia.org>
Date: Wed, 13 Nov 2019 15:15:50 -0800
In-Reply-To: <20191113200806.GA1279@makrotopia.org> (Daniel Golle's message of
 "Wed, 13 Nov 2019 21:08:06 +0100")
Message-ID: <87h837gyft.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_151559_486086_C790FB50 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add
 /usr/share/libubox/jshn.sh to sysupgrade stage2
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>>>>> "Daniel" == Daniel Golle <daniel@makrotopia.org> writes:

Daniel> Hi Russell,
Daniel> On Tue, Nov 12, 2019 at 03:33:48PM -0800, Russell Senior wrote:
>> 
>> Discovered recent changes had broken sysupgrade for ar71xx mikrotik
>> rb-493g, traced the problem to missing /usr/share/libubox/jshn.sh
>> after switching to tmpfs.

Daniel> I've applied your patch to master. Do we need to apply it for
Daniel> openwrt-19.07 as well?

I'm not sure, I haven't tested 19.07.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
