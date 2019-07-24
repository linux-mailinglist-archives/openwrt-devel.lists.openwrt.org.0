Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBE9741B8
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 00:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dg4LHQKGYh0Ky/ZC8CWpM5gqTaCyFekP0BL6S+/TLKo=; b=iNZ37kdL6vAU09
	hMXITYGVj3T+ausK8eWDxLQiplizO8Yqm0i/EuVHysSl/q3a8GVy9gZDksebmbFPim0rWjqNvdXTw
	oHfPbU6ksKoZFyg1C0qmpf75zievi9OrIbvY2iNlBhat0h40xQP34FXxFt354+8VE8Pn45fv28PdJ
	f9dxQssrjGwufa0jlgh1h8A9Iha38sLE1UZO8zvJqotJF6lr3jthG/ZfO+enLOXAbW+rF0MerIFkV
	DUUJb/fUbgaNrQc5BebfdnSYTP8cJzKAxIPqubpWYphbXbC3NAqZhWpCtfMw/MHPtX2BLZEIsHlnM
	w9EnS7zCtqY1elWIbXHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqQ6B-0004PO-Iw; Wed, 24 Jul 2019 22:51:03 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqQ5z-0004Or-H2
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 22:50:53 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mdvua-1iR8UL3oO6-00az9J for <openwrt-devel@lists.openwrt.org>; Thu, 25
 Jul 2019 00:50:47 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 00:50:26 +0200
Message-Id: <20190724225026.35856-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:7JMOkzrisJZdi6fvd0zgM50lcEhLk5aQ50VmP8O7ZtPkiAS4r/0
 Es+MURN4hdAx8NN1w5+6X4mnByqz9dJSNpTw2q3w/amdNsX9nFh38Cypt7M6bfHZXPRDLvM
 c0CW4XzUPzKmM5ZHr4U6V6pomdTkLGi6lT0VyPMuexM8yxIyQCdWq3O22coQ7KHw5eGzYhJ
 fbNf0i6sIvZQ5f7nlD+7Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4A8hhs3dvE0=:04jRLSABespnXvC8NSH472
 L8NvMtIYtOsMmVHJcnaa+AL4qrchghyEB0KzLYVn1yZNntW30/l1Dh9T69FzW+CUuYASv+m/c
 Y8ZhXxEyffQV8kytPiXHxoTVRzIRCg7qNcJtO4HD6MlW+g+dHx+iF2AEECtS7TAtfaFZtMp3X
 wN9v4C8Ueq/2uEkS7WdN0i/4w/lrHNeN/S6chIY38EY2yEGcvkQT8IaN74/sT//Ic3h+9VmVN
 swsZ6/8Nee2z1/3BJXETXUl/K5V02iYB71v+rWtJSSbIYKRlZysSN8Dxwb8DLU3VWysTMwuLc
 lWxzDAWaZMojk4uj/kUHQZ3G166UwjEnfyMEI/GtHhrZy8nGWIC7nv0Ryhz817jw1qK8sW5zO
 +0CFayMndz5DNHtyjPzX4xxXCWiNmvtOTRCsWuv5UWu+ZH+cztsHy0YPCfsXqHFtP9Emr4MnJ
 EUUyVt5x6kQDdLXhV8h8mH3YxSNrkSKqJ+okNwucyMBrqCQ8JKg7N076tV1cw+ISspkfFgskF
 BvJuJeAZx7zyikCPGu1tGTuqWR0R7FXcapKW3FMGpbJ/Ppc5W4Awn45o09tzgIILEgvZDmG2D
 fc2FjKj6jnOKCslZQCRGxRg0GGwd/Z2n7P0jOE3PhRNLOGb9tyImUgIzGRJWcjp5PCh4v4ymN
 Q345Urn3ZkhNxf6p8P/+eT0utufBOBJDsT5J3l3WmljN+JH9KzyZm10MNe1fBlLivN6DakYxY
 C2uaimfWPzzSUZTSMApIySACsZuQx4A0s+yuSE4FL1y12AWUKgY7GJyYbrs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_155051_859265_79A3849E 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] octeon: Replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Fix accidental remove of subshell.
---
 target/linux/octeon/base-files/lib/upgrade/platform.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/octeon/base-files/lib/upgrade/platform.sh b/target/linux/octeon/base-files/lib/upgrade/platform.sh
index 0e4ca37629..1c08489dc4 100755
--- a/target/linux/octeon/base-files/lib/upgrade/platform.sh
+++ b/target/linux/octeon/base-files/lib/upgrade/platform.sh
@@ -85,8 +85,8 @@ platform_check_image() {
 	er | \
 	erlite)
 		local tar_file="$1"
-		local kernel_length=`(tar xf $tar_file sysupgrade-$board/kernel -O | wc -c) 2> /dev/null`
-		local rootfs_length=`(tar xf $tar_file sysupgrade-$board/root -O | wc -c) 2> /dev/null`
+		local kernel_length=$((tar xf $tar_file sysupgrade-$board/kernel -O | wc -c) 2> /dev/null)
+		local rootfs_length=$((tar xf $tar_file sysupgrade-$board/root -O | wc -c) 2> /dev/null)
 		[ "$kernel_length" = 0 -o "$rootfs_length" = 0 ] && {
 			echo "The upgrade image is corrupt."
 			return 1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
