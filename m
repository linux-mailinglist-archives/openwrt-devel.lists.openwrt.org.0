Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B3A1E1DF4
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 11:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=socFmUWp7wYtOKEPVlJcxOc7qlY58SeGWSm4zpvi94Y=; b=gDDReUBs6rOQWl
	BOLdC08tQ0+6mf5y41r5Ud2Dk+WWoIdPKYyV3erkVtQdcPc3M12znx2SM5DSrVbEpX3SHqhY6Y2WP
	PKwhNH0L+LQ3mmj3q9pnussEfG3vAZCfRQ6ntfLOdQpOScSEkHlHkvNb5GNFl1mJFqlrjKuVvALaJ
	YBySF4ODCWcPXw7KaJc9btwXsuu1ViEDME3L/mLCbMDZR/nhscFUgEdmPeKKeAUzymQ46GgSC3fji
	i5QXzvVHPGi/6htURiyWzS7WHkCBIhvXZZUrUhZEMteMD8VXdOAnfQcBRlxUT1ZYAagT29pt3QQ1E
	44gp5kIyaihb7z1wT+yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVZY-0008D3-4m; Tue, 26 May 2020 09:08:32 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVZO-0008CR-LF
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 09:08:23 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jdVZI-00022w-Es; Tue, 26 May 2020 11:08:16 +0200
Date: Tue, 26 May 2020 10:08:00 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Jaap Buurman <jaapbuurman@gmail.com>
Message-ID: <20200526090800.GA1616@makrotopia.org>
References: <CAN-r--kwq2Rth-JVW4hPvDxHqZe8Ah8-eA5c1r_AnBn_y7hmrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN-r--kwq2Rth-JVW4hPvDxHqZe8Ah8-eA5c1r_AnBn_y7hmrw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_020822_693006_BA7678CD 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] ramips: gsw_mt7621: disable PORT 5 MAC RX/TX
 flow control by default
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

On Tue, May 26, 2020 at 09:54:40AM +0200, Jaap Buurman wrote:
> Dear all,
> 
> The above patch has been committed for a long while in the master
> branch (https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=c8f8e59816eca49d776562d2d302bf990a87faf0).
> Is there any chance this could be backported to the 19.07 branch as
> well, since it's a bug-fix and not a new feature? Thanks!

Done.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
