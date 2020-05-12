Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0351CF8A3
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 17:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKMRfHf5GrUVr0qtcVdo752NmcxlB5xvUA+7zPp0YC8=; b=cL/9rZymILmZjH
	Nh6ph8uKKl5kE3WwxK5hKlf2PjpynXkpJy11m//Emykr8OwJzsZD6rG9zw3UsJm/EhHZUW3ICNP3p
	2RqKBTVzTaVqUDZXu7kxZ3jlUn545j7ltdkadpyv0jJuj81mKgf3FBgQdbJo7bSjzbkA+f1KOrOvR
	R4y9kGcsPlSQrSlIJ/UmYnI8tWLjRwh5FEQYAYTQRDV2SgAWP3JI4CieQ3Kz5r5cWfZpnBkvnZD32
	6y7AMuhgb1hdmz4I0Sz69pK8x0/bWyhOY5kiMQeHF82sCV0mQ3atrsNb8f5dgwkwIiQa96ASt+7LP
	DjR563o4QzvyhYLFkxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWZ9-00070p-So; Tue, 12 May 2020 15:11:31 +0000
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWZ2-0006zk-Ve
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 15:11:26 +0000
Received: from vsmx003.vodafonemail.xion.oxcs.net (unknown [192.168.75.197])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id DA0F459D0D3;
 Tue, 12 May 2020 15:11:18 +0000 (UTC)
Received: from arcor.de (unknown [87.162.57.217])
 by mta-7-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 8BFA7539A0A;
 Tue, 12 May 2020 15:11:11 +0000 (UTC)
Date: Tue, 12 May 2020 17:11:06 +0200
From: Reinhard Speyerer <rspmn@arcor.de>
To: Alex Ballmer <alexb@meshplusplus.com>
Message-ID: <20200512151106.GA1045@arcor.de>
References: <20200511185653.1f81ee9c@meshplusplus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511185653.1f81ee9c@meshplusplus.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-VADE-STATUS: LEGIT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_081125_162094_D17429DF 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [153.92.174.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rspmn[at]arcor.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Quectel RM500Q failing to get ip address
 assignment with netifd and modemmanager
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
Cc: modemmanager-devel@lists.freedesktop.org, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, May 11, 2020 at 06:56:53PM -0500, Alex Ballmer wrote:
> Hi there,
> 
> I am trying to get a quectel RM500Q modem working using modemmanager
> 1.12.10 on openwrt 18.06.2. Since the device I am on uses a 4.14
> kernel, I manually backported the following changes from linux upstream
> to allow the qmi_wwan driver to recognize the modem
> 
> I am connecting using verizon wireless with default APNs
> 
> https://github.com/torvalds/linux/commit/a9ff44f0e61d074f29770413fef6a5452be7b83e
> https://github.com/torvalds/linux/commit/f3eaabbfd093c93d791eb930cc68d9b15246a65e
> https://github.com/torvalds/linux/commit/accf227de4d211b52c830a58b2df00d5739f2389
> 

Hi Alex (and other RG500Q/RM500Q users performing firmware updates),

since I did not have firmware files when I submitted the RM500Q QDL mode
patch I could only verify that the device switched to Sahara mode and one
could reset it to normal mode. What I learned from doing a firmware update
later is that Quectel firmware tools switch the device to another mode
("emergency download mode") with Qualcomm USB id 05c6:9008.

Unless you need Sahara memory dumps on OpenWrt you could leave it out to
simplify backporting.

>            | firmware revision: RM500QGLAAR01A01M4G_BETA_20200316F  1
> [Mar 13 2020 07:00:00]

BTW, there is now also a RM500Q R05 firmware available which is required
e.g. to use 5G networks in standalone mode.

Regards,
Reinhard

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
