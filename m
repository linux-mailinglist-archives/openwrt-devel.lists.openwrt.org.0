Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1715B17CDC1
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 12:16:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q1Z1T6nfN82FCUDWIBjEowDrCql2dsd08gwZ9LRqQ1o=; b=tDjjjusI/AGJbi
	10qhuxJKw8THjO0Qy7yoS/oHdkSMLbE1U4kAIDPs6LKgB8d4FsT2D3RWsTZlvErjrPc+VtvuOTMD1
	raM9XLKv3SlAe40yD21QyXCTZhzcNitDEaOrCnTsPSADCpQEx0lp9q3xIYkVwVs5wliPEeyAYP2qq
	qpm1E2rl2FDfRREbVMHY5OL9E1gZkuC2Y7e3DhhpLv/hpv+iywbCCjyGHM7dF2jTxsXyqNVHJVn/J
	mDs3ZD82KRj/uKkCWAQFOAnOKa8Vbi0PcBp+4aHovlLJGGpNU4293U20nCGngkQAMZIR5YheKmQv2
	UkeDB8QFRt8HYDfRv9cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAXRi-0004Th-Gi; Sat, 07 Mar 2020 11:16:42 +0000
Received: from v-smtpgw1.han.skanova.net ([81.236.60.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAXRc-0004TA-6Q
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 11:16:38 +0000
Received: from gammdatan.home.lan ([81.235.210.78]) by cmsmtp with ESMTP
 id AXRUjV7DMns9ZAXRUjXD51; Sat, 07 Mar 2020 12:16:29 +0100
Received: from [192.168.0.3] (tobbe.home.lan [192.168.0.3])
 by gammdatan.home.lan (8.15.2/8.14.7) with ESMTP id 027BGSg01770021
 for <openwrt-devel@lists.openwrt.org>; Sat, 7 Mar 2020 12:16:28 +0100
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
From: Torbjorn Jansson <torbjorn.jansson@mbox200.swipnet.se>
Message-ID: <d999b778-b2d1-d71b-e87f-991956bd8a5a@mbox200.swipnet.se>
Date: Sat, 7 Mar 2020 12:16:29 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-CMAE-Envelope: MS4wfLoRANzlTTKOKntYWPyOUVUWvr0tlWSYZMG70f2a1262/IZ1xnToClv8Dob/uO88OXHtoHGgrAKsH/n1l83IjUfjR5QthnJ9wQS5M3spnxZqOljmHdbS
 /XfKVBL6NkP7h5mTKQqDzGuJY9RkVOOm5T1zDmCtiUJv4IUj6C6+DBhbs1Xah6MuYM1Nx77P7/woqBNQhVjTSjr/OITovtl9sI8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_031636_411562_3159AFA6 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [81.236.60.204 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] luci-compat problems on 19.07.2
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

Hello.

i just tried to upgrade my ubnt-erx-sfp to 19.07.2 from 18 and when i was 
reinstalling the packages i need most of them failed on luci-compat.

see below error, how do i get around this?


# opkg install luci-compat
Installing luci-compat (git-20.064.69776-e8c638c-1) to root...
Downloading 
http://downloads.openwrt.org/releases/19.07.2/packages/mipsel_24kc/luci/luci-compat_git-20.064.69776-e8c638c-1_all.ipk
Collected errors:
  * check_data_file_clashes: Package luci-compat wants to install file 
/usr/lib/lua/luci/tools/webadmin.lua
         But that file is already provided by package  * luci-base
  * opkg_install_cmd: Cannot install package luci-compat.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
