Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3333B851
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 17:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V71x3jbJ+xOYjil5db2NaZVEmqtP2ypCITFeHXhBtt4=; b=i01/38XZDWib8c
	wlosS7zIXNr01WvU69alwlH0hzOmnsBBWaRYchFEu6zxINHLVVFiBtlO2x10yGvN5tPvmaSuE1sH2
	PSeNBGyVTBf8CZq3MU31qydqw46k8AJQjoVFOtPEoyzs2XTz/Ogdnw3IMneuNqdxaAPs/yaAVaxKR
	LRpdYiV3Bpm8ecWUa+6QS5rM08A0O22JI266DAz5MKgyuyzBAWmizllJqiywzgaZhYiXBsBATpZ4A
	LsoNeCWYdSy1tY7WS0CTbiwvBq6pNpr1f648pfopj+pkSEbjp9p9Ss3QSl/zJzYuDsdEwbEUnWd3k
	KVei2n2RE5fTDmtvHgRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMEK-0002lF-I0; Mon, 10 Jun 2019 15:29:04 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haME9-0002fB-Pr
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 15:28:55 +0000
Received: from localhost (unknown [172.20.6.135])
 by mail.nic.cz (Postfix) with ESMTPSA id 4685313FFF9;
 Mon, 10 Jun 2019 17:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1560180529; bh=wJN80rBnYjUl1Xs3t4k3TTBQ46O+KG7T2vCXSXZ03jM=;
 h=Date:From:To;
 b=VwtytlLCQu2wgHDkEFZSQjTVwu2gqdFK1J2jGIIB3h7HPC4+uz4ObJFsP86pokVXO
 6LPkKdXRCmeh454RxRZ6swsFJRYldfZrI4omuKy7slBVPxYpc6rDYz5fjVKEKk3oxx
 wnKYw5oskWQZ/a/yhSc/za0lKEm6MkYEaL7USLzI=
Date: Mon, 10 Jun 2019 17:28:48 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190610172848.4dd63e02@nic.cz>
In-Reply-To: <15ee5416-a462-a310-2d63-cb2304416d5b@o2.pl>
References: <20190605143124.7598-1-tomek_n@o2.pl>
 <9b5e34c0-6ae0-1e2c-e831-4b0406afda7e@hauke-m.de>
 <15ee5416-a462-a310-2d63-cb2304416d5b@o2.pl>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_082854_153733_527459DB 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] mvebu: add kernel 4.19 support
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
Cc: Vladimir Vid <vladimir.vid@sartura.hr>, Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel@lists.openwrt.org, Marko Ratkaj <marko.ratkaj@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 10 Jun 2019 16:29:07 +0200
Tomasz Maciej Nowak <tomek_n@o2.pl> wrote:

> Preferably, yes, it should be only backports. Patches with index number of 402-406
> and 408 were added by Marek, maybe they are necessary to support some SFP modules.
> That's something he would need to answer, because I don't have any hardware with SFP
> port.
> 
> Regards
> 

402-408 are the new version from Russels phy branch, needed on 4.19 for
SFP to work as in 4.14 (+ maybe some new stuff). Yes, it is possible to
put some of these patches to generic/backports-4.19, but I do not know
if it won't break other targets.

Marek

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
