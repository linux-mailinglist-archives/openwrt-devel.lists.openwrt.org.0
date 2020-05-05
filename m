Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1F91C506C
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 10:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vXosvvOXmMeZGzoF2eJ/zHZmWvUE137WuH9cJrT+pWw=; b=YMpwqxZhLO9rgG
	C188Qns7g3qtvvvmD2THbZ2x3MHgVcRl6B9VSXnLeDrtltj/sPU4xxOGhWQIMyJAmw7I72lhPPchL
	pUFh1X0tfaS8JRIcwWBAxCciQUOtIPwREWWnwx6f0T4mJARoPCQa1iOruUdUCIZsCfNbsgZXKRoYd
	sbpL882Mzpf22k7RB8GJCojcvppPmOkVQdQbv5OU9HnDDJiLYHjJ9LJmR9BtSEEflis9HH3APGSK0
	46nHSOnOU6vghJTLxcsweT3Aye1lnWE0womhtWTYc0diPLnkNcrOQsxiPeQOX0GhSNS6qEGwq6Q/M
	BDtJ0fBtkj1kGxFMQkwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVt3a-00016G-0w; Tue, 05 May 2020 08:36:02 +0000
Received: from host.cas.cat ([51.68.173.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVt3U-00014h-DP
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 08:35:58 +0000
Received: from host1.local (45-150-187-203.ipv4.at.exonet.cat [45.150.187.203])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by host.cas.cat (Postfix) with ESMTPSA id BBD2F3FFF1;
 Tue,  5 May 2020 10:35:48 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: pedrowrt <pedrowrt@cas.cat>
Message-ID: <820c7e91-d055-9803-fd9b-9ba79779c4ff@cas.cat>
Date: Tue, 5 May 2020 10:35:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Rspamd-Queue-Id: BBD2F3FFF1
X-Spamd-Result: default: False [-0.70 / 15.00]; ARC_NA(0.00)[];
 R_SPF_FAIL(1.00)[-all]; RCVD_TLS_ALL(0.00)[];
 FROM_HAS_DN(0.00)[]; RCPT_COUNT_THREE(0.00)[3];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain];
 HFILTER_HELO_IP_A(1.00)[host1.local];
 HFILTER_HELO_NORES_A_OR_MX(0.30)[host1.local];
 BAYES_HAM(-3.00)[100.00%]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; R_DKIM_NA(0.00)[];
 ASN(0.00)[asn:208253, ipnet:45.150.184.0/22, country:ES];
 MID_RHS_MATCH_FROM(0.00)[]; SUBJECT_HAS_QUESTION(0.00)[];
 DMARC_POLICY_SOFTFAIL(0.10)[cas.cat : No valid SPF, No valid DKIM,none]
X-Rspamd-Server: cascat-vps
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_013556_605684_4C628746 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Multicast issue in 19.07.x release and master,
 fix it in 19.07.3 (?)
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
Cc: ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ff02::2 multicast is not working in nanostation xw, but roger pueyo find
a way to solve it: revert commit
c8c2ef1d495dd3fd3096ac508e91a02f9c583ea8 (which is very short)

I don't know the implications of doing it. But it fixes a bug that
affects us a lot (we have lots of these devices and they do routing
through cable)

https://bugs.openwrt.org/index.php?do=details&task_id=2848

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
