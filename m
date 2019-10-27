Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CFBE62AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 14:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=veW5HiUXhavdFTFEGBCe6Ci+B69w1TH7lREU3iDQCmE=; b=pvhAYbZ3q/KGX+
	Wvt89u4ydgoMrdItrnotU13qxGlJhXWPDAD2RxLiUZFaVIJzQiDGEmCRZkWT1ODXkkRH+D53vhMYT
	/I07/FB/KHHLDDntLg27RelNEl3rDfpSvw/6PJladTrg1eJdOi+sUyfmYLrqByNdP/hHedg6FDqC1
	O2ybtE2V8/GtVY1zZEvx1vC3cfbW2SqAMCC7MsqasPfgNNZ4Qb7fFkrj03sd0pauDH0GHRFPZouq0
	TnrBXjQTp0J3MqWte57nZSyYyNYuQXubj6ZKn/Z6e5Oa7+IyTmsbcm7Z4d7edXekUQRMaeWrbczVb
	g/6uQZU7SV0M1xzDlgSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOigQ-0001eF-Er; Sun, 27 Oct 2019 13:34:14 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOigI-0001dm-8G
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 13:34:07 +0000
Received: from p5dcfb592.dip0.t-ipconnect.de ([93.207.181.146]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>) id 1iOigG-0005e2-PN
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 14:34:04 +0100
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
Date: Sun, 27 Oct 2019 14:34:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_063406_458097_B0C8A755 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] patches from 2018
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

Hi,
I'd like to close all patches pending from 2018 in patchwork, there are 
~25 and a quick try on some showed none of the apply anymore. Anyone 
have a problem with this ?
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
