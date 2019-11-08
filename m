Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0554F4735
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 12:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ySjcOqm65GG+vZxKjzL1E2Qjw7YYN/Fj/GLrhqJYmv8=; b=i9qJPrzNtO/5+z
	ZBuLdvKnhzia/+7xlJG21kypyij2SaUtjtHO58J4dre130LffWBY2QDhOdKWp4v+0vwSYt+Sqsjds
	zK7ktLjSodeXoGteD86+Iip6YsxYZRSJg8OdfvkPQLqV8TYrJvU6zdUU7Q6ON/lqwb3FBeVEvkvTP
	hc4mIYsDKA5bsRz1QeDMfvM8CzK/hzKpdpAsAVxtJSneMF9ayDK2ZiXFktiQNk41mudMZbUqPsrQo
	X3dPFYAkjA0lkO3VoZGo0fHJA/RvQrlKT3MeQC0cd2u34dExr49Z8VVLkfCF55DwnNATBfu2EH6eD
	LoM/2bTnrHOZEVwi4kFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2lA-0006ll-Bh; Fri, 08 Nov 2019 11:49:00 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2l0-0006kg-1Z
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 11:48:51 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mw9Dg-1hbDDM49eG-00s5NV for <openwrt-devel@lists.openwrt.org>; Fri, 08
 Nov 2019 12:48:45 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 12:48:39 +0100
Message-Id: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:QnDjgmwZ12T4DHaBON7lMB0jzoLbc+SencDz9VN+GR2FyeTlnGB
 YlERVMYfpCrjZjI5iRtF8CpXxRk2NMqqpHYSzDzUUM8HPUgM/4gH+stNhuYTclvEWHtSpZa
 qlW+ZrqiR9Kxegi/P8o2vMYQl1xi4Ep2wRom8FKleRv8B7AT0G089aJ2Xymp9j0wPQy3mi/
 04nRp+9s9B+hjU0A9rCwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:St/VhkjSqJI=:cC6qrTJc9S8PQ8dBaHDNK+
 9VgtR+w4bgYTyMEOWu33rA99CqUB6hW8YDiby5yeXvovWpsu33vl4uTI3nBfFD58ZIgiQlSYo
 3aRd+dJrveHGXnaVsaMWBJ8e/hHvqNSNOFAcvSm/HPM8Hd81/VTORG2qPKFPSwn+b2QlKicdq
 vCJkRQ2moI4O10LkvVpJYaWjSjcdm1YV9w98ZThgsiWFxLXNqkIA2uT0iKHTk1D3zRlcnvcN4
 HC9Olul51j8/a0MtdmFM4/QTbRvDsFMN2gnVDJ2dODz++3y7uUhUs53s+iBxAzD1qKvRB+Wlj
 AcG1QbfBB23uRu2Xre5Y+Cel7lFhL7vvFo+FxTDdouAE0q6tn0q0UAAwvEjdlevnDav6AZQnt
 2G1BdD+Pej31Jj5++mZyJ+zNBmWXyklEYaUBLlMbEDd2GLkEMXFj8MU4aGEghOecO+x8qgBhd
 I2QOwMXCwHaXXUs5TUoEMt0vL/RWHxvXyKKBtlUFYkmnOwQQq6yvOo431Yq/XXBva6zR/xXmy
 eM8B/XijnqXTFiTUpFBBYzrrK4M/FJiaY1U6Bq9oOL14AEaucBExByjWYzLxXEBCYWTG13UI8
 usnTGprys1YKsrL4+gUWJo+62bjHSxATF5FN28u8j5R68yoDDBh8A5T+zd6dLLVLPUvWGtpN7
 792WmMsm39sGxe7QuduRtFPZaIg4hGR/04xnQiN3tHSuQOxXofMxFTF3krPlHVPz5+eh1M92J
 Y/4k2LGbXopr/ueaz9KjGqvd2qiML8zNRlFESlALB9uagxUhbhY14i8t/DOMbpFet7CrLfL9Z
 dcAqTzuP7wBxmm3ITl+xeuAEotcJr7MqDNCP+xlHOVLivmHQoPfFBPjzp8MuD2uEusUiALWqS
 4VcHKdiUUDYWmB5aJWQiKnzgsx9SlA88V+lHdFqvI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034850_383692_B6DD1469 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into hostname and
 SSID
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

This patchset will introduce the label MAC address into the _default_
hostname and SSID of OpenWrt devices. Devices installed after these
commits (or upgraded with sysupgrade -n) will have their hostname and
SSID set to
OpenWrt-ddeeff
where "ddeeff" is the EUI of the label MAC address aa:bb:cc:dd:ee:ff.

For devices where no label MAC address has been specified, hostname
and SSIDs will use the former default "OpenWrt".

Implementing the EUI is intended to make identification of a
particular OpenWrt device easier. The label MAC address qualifies
for this as it is easily visible on the case and thus apparent to
both educated and uneducated users.

Adrian Schmutzler (1):
  base-files: rename SSID with EUI of mac address

Rosy Song (1):
  base-files: rename hostname with EUI of mac address

 package/base-files/files/bin/config_generate  | 16 +++++++++++++-
 .../etc/uci-defaults/15_wifi-ssid-mac-address | 22 +++++++++++++++++++
 2 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100644 package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
