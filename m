Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BEA16AA79
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 16:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P/qDHsBmVmXAmgV8kq4sQbH225uwvwGWP5vUCYKGKzU=; b=Oa73sU8NR7NE9R
	IBoYY6wFUBnNkWfj+j7MTSO7ZGdJJvbrL7CaETXcQtyp4FHUT5JOOntH9chsH/Qg1rPr9bLx7+ZVu
	Qhvm2F9u4rjsMYPv5ma54XtAzrofROwxvVW8tRmGATuiEVwthfTAxPJ9arnstVREtClzYAmuV8BAc
	lGGbTJE41inKvisLkAxy+2fvmpXmHVY3MeOrz9K8lCZVZQ2ryv0q7MTteN2sN2YQG1bxzmGx/kQwb
	IByxmBZc1Q6fi82JyuB2qlEyRTxAvn6vrtqM3uUrm59haYY9aqg2JbuMMbPa5JEk22PANP6dPt0QC
	AknijER2RMo73aIMyWPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Fyz-0000QU-TJ; Mon, 24 Feb 2020 15:49:21 +0000
Received: from devico.uberspace.de ([185.26.156.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Fyq-0000P6-Rc
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 15:49:14 +0000
Received: (qmail 30737 invoked from network); 24 Feb 2020 15:48:59 -0000
Received: from unknown (HELO ?192.168.1.23?) (130.149.221.177)
 by devico.uberspace.de with SMTP; 24 Feb 2020 15:48:59 -0000
To: openwrt-devel@lists.openwrt.org
From: Arne Kappen <openwrt@arnekappen.de>
Message-ID: <e86abea1-6c7d-49b9-164f-6ce0971f8631@arnekappen.de>
Date: Mon, 24 Feb 2020 16:48:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_074913_184134_6EF72A7D 
X-CRM114-Status: UNSURE (   3.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] hostapd fails to link at current master
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I'm getting the following liker errors trying to build hostapd-full or
wpad-full fpr x86_64 at the current master, and tag 19.07.1:

/home/FE/kappen/sdwn/openwrt/staging_dir/toolchain-x86_64_gcc-8.3.0_musl/lib/gcc/x86_64-openwrt-linux-musl/8.3.0/../../../../x86_64-openwrt-linux-musl/bin/ld:
/home/FE/kappen/sdwn/openwrt/tmp/ccYWEaXY.ltrans13.ltrans.o: in function
`br_addif':
<artificial>:(.text.br_addif+0x61): undefined reference to `linux_br_add_if'
/home/FE/kappen/sdwn/openwrt/staging_dir/toolchain-x86_64_gcc-8.3.0_musl/lib/gcc/x86_64-openwrt-linux-musl/8.3.0/../../../../x86_64-openwrt-linux-musl/bin/ld:
/home/FE/kappen/sdwn/openwrt/tmp/ccYWEaXY.ltrans13.ltrans.o: in function
`br_delif':
<artificial>:(.text.br_delif+0x62): undefined reference to `linux_br_del_if'
/home/FE/kappen/sdwn/openwrt/staging_dir/toolchain-x86_64_gcc-8.3.0_musl/lib/gcc/x86_64-openwrt-linux-musl/8.3.0/../../../../x86_64-openwrt-linux-musl/bin/ld:
/home/FE/kappen/sdwn/openwrt/tmp/ccYWEaXY.ltrans13.ltrans.o: in function
`vlan_put_bridge':
<artificial>:(.text.vlan_put_bridge+0xa9): undefined reference to
`linux_br_del'
/home/FE/kappen/sdwn/openwrt/staging_dir/toolchain-x86_64_gcc-8.3.0_musl/lib/gcc/x86_64-openwrt-linux-musl/8.3.0/../../../../x86_64-openwrt-linux-musl/bin/ld:
/home/FE/kappen/sdwn/openwrt/tmp/ccYWEaXY.ltrans13.ltrans.o: in function
`vlan_get_bridge':
<artificial>:(.text.vlan_get_bridge+0x7b): undefined reference to
`linux_br_add'
/home/FE/kappen/sdwn/openwrt/staging_dir/toolchain-x86_64_gcc-8.3.0_musl/lib/gcc/x86_64-openwrt-linux-musl/8.3.0/../../../../x86_64-openwrt-linux-musl/bin/ld:
/home/FE/kappen/sdwn/openwrt/tmp/ccYWEaXY.ltrans15.ltrans.o: in function
`ap_sta_add':
<artificial>:(.text.ap_sta_add+0x1d9): undefined reference to
`sta_track_claim_taxonomy_info'

The last error also appears at tag 18.06.7.

Best,

Arne


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
