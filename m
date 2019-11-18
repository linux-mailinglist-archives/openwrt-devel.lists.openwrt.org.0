Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB330FFE35
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 07:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5aOiyeEWzF0KvBVF8nCGla6tCq1orHn1DO/xY4A+8k=; b=sA4r7WVtXKyqLv
	x+hHz22eT1JKR/R6eE+C7hXXm7fPXT/9mmC9qFPlpQ1bK7433Ll52S+CzZ7UhdKrE8v0mD4ZLQJOv
	XEU78Kudhd7DppIl8R/WTg+pEH+2cnGF7PfNKm9/6vX52n5GrB6QfShw1SaM4NQLpAmZCMRIoRNwq
	vGfyRTruYqaTyQKFIR/1/BQ3E4XCb7vE7DY6oqWuBy8lpnZt2JGQXIImx2OG17s6KFe7D+KymKg1s
	0XRlusJnm+a1d8Veita/KbZ7vJ9+LMyyGUODBJIk244fjFiD34SDIRRNRYBzQNM4a+htgYkQnxnn5
	KoppJKwPZEnYketWKqeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWaAf-0005nP-0U; Mon, 18 Nov 2019 06:05:57 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWaAY-0005ms-H7
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 06:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574057143;
 bh=0PTx1mYBZGpo+JyKpNklZrDSbGmpfCAiP8ajVGhV4KQ=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=PlCs+G93FBxXUt9V/5WLr4RrYWQ8Iuwvimrry8a6dxPpPE23H5+UiUH2mT6dnffBP
 u04CiyrwPvNYwTsYZjfyYy35qU3LAjS+zEQ1iwYfwGk5L2X4S4lvLukLfztPJWTIzS
 Jm+KACrYGBHSr0S/2T89j2Yn4iu+Cio6xBQh1nTo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([217.249.121.154]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MbzuH-1i0YP348pr-00dYAS; Mon, 18
 Nov 2019 07:05:43 +0100
Date: Mon, 18 Nov 2019 07:05:41 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20191118070541.76061fa1@mir>
In-Reply-To: <20191118002258.17776-1-hauke@hauke-m.de>
References: <20191118002258.17776-1-hauke@hauke-m.de>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:TXKUdLhCCUcOu385eZ1n2HeNxvqY027ZLLqZRMEBFjZ23uzlc0i
 2b5qAqj5EDehg2GcrSO9J95isxNW6jb9aLA0p+7+mbnNprYb6e+CclaPog0FWmhqhmO3Zbc
 86eChL5Xw5V2Ba2rzhAPf4Z8+eJ4URh42chcREFdXq33FTw1+oVeytz7Ai8Pe9PUV5Ebtvu
 IU4rwcNfZN6RWiTlQ1AXg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eIOf5ICQGkc=:wZGxboJpHBcWmLBN/vaqhU
 P4mToLBm53IiaVFPKjNCDz/eXq/+qq1QeerKZazbLZp1CspSLDY07ZOG9FH80C2avFnoKcMWK
 l9H0A+ge3Pg9rXDWJToWvsSQ8lEhM7635cpuprWQo8at89ZUF+Ks1KB53NCVLEyPBHbAxuw0d
 BTvplLsc1eUricAFPIlUcKaxGNCxqH9pl2+JYptvj5apxDRTF0jwiv4108mWlPOgwhLH68kFE
 RwgNViRPafNOVUYcM2hGG/JZZ/TshNUxoaQqY+IXlC3W+rk0GHxDdxRCN3M6XZgrCwscva/b/
 bSvyGPiGxCZOapFMWmLiAXESGbRMf233Z4o0yh+vNY9oQQQN3ntk5HCMLVzfxbeeqFIPa0GgG
 nHr6NVTYdu9SWQI4AqsURbFchDKdCkLSvQ++vl+7fKdMSOiYUjZ0BV7HehQrM9ydjg5kVTKkz
 sA9Rp4BKQvPOaf4m7nbFk04oHfr0321hpEmoRFFDNGKeb3TmT5bAuxKXXwdkPxfRAENO2B58E
 iok++Yx5lfmLbe123XtjRigFXFfG83Ye2YkmH2JH/k7et2LGzCIsqoyFrflEFtTlCj1pYbkvY
 LkpFVUPGrj5cpwQg1ITfxKOTgYIO7OAQqj++LXhJQe1i0zBkHo0q7LdW+K4eevwtRvNDXi8il
 xYMpXH3WHLFWg4W5hPo550FuZTT/o3WUDN93mZDtlFUvV0PNYIXMuXeSyP+/ulV2moohPYH32
 Bw8ji7pOQy0XNv6IXN3R9F8ONVHf9m2Hl7KfFRj1YzbVScms8OBdThRmQwxbcOhGKBIsa/QMa
 elX7B4AEuAKtG1bVqUgFTi6jhfk9hgf8FOt73Ru61FKaJuTEg0jQL9ZpVNEzUFxd4D3OLG4li
 ICx78HOsbrWZ84SRLiFM0Zmh5S1cR8GExmd9re2uCFC0mxcTr43aMkDpjus8VudRvu86IxWH+
 NIidPpmoQawuVCN/4hUZYsdtsJ9D7F/DYw+ZkdktNKBlEov1anSN0TMkxFkKz5UjvEJT1EKd9
 zQU/zfdyqNXSfvit3GcO8eGI0IsoQRxo9Tv0frauanQV8tOHHCAg0xXFn8jTRDd8odSsHfWjT
 u8avP5vprjyAwzlHq+tdVGzSLHVsWcWN/2Bw92PTAAsMRV/wtjzaZFSZJKm4izATrvqWyCvcy
 CtKjLuHG1N18rwxgzg6J53DMrHDvnByP81+FROZazH45lxg2Mob57zMRzJOxvRa+GRjD8xv4N
 4f3cifC2508N39+QBal5MBvBH3WF3CspO1cF/+A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_220550_862642_31CEAC87 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (s.l-h[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2] mac80211: Adapt to changes to
 skb_get_hash_perturb()
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
Cc: openwrt-devel@lists.openwrt.org, koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Hauke Mehrtens <hauke@hauke-m.de>

The skb_get_hash_perturb() function now takes a siphash_key_t instead of
an u32. This was changed in commit 55667441c84f ("net/flow_dissector:
switch to siphash"). Use the correct type in the fq header file
depending on the kernel version.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Stefan Lippers-Hollmann <s.l-h@gmx.de>
---
 ...t-to-changes-to-skb_get_hash_perturb.patch | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch

The second hunk was missing from include/net/fq_impl.h, which resulted
in a build error on 4.19.84:

Building backport-include/backport/autoconf.h ... done.
  CC [M]  /tmp/pkg/openwrt/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/linux-ipq806x_generic/backports-5.4-rc2-1/net/mac80211/tx.o
In file included from /tmp/pkg/openwrt/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/linux-ipq806x_generic/backports-5.4-rc2-1/net/mac80211/tx.c:28:
/tmp/pkg/openwrt/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/linux-ipq806x_generic/backports-5.4-rc2-1/include/net/fq_impl.h: In function 'fq_init':
/tmp/pkg/openwrt/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/linux-ipq806x_generic/backports-5.4-rc2-1/include/net/fq_impl.h:319:19: error: incompatible types when assigning to type 'siphash_key_t' {aka 'struct <anonymous>'} from type 'u32' {aka 'unsigned int'}
  fq->perturbation = prandom_u32();
                   ^
make[9]: *** [scripts/Makefile.build:304: /tmp/pkg/openwrt/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/linux-ipq806x_generic/backports-5.4-rc2-1/net/mac80211/tx.o] Error 1

This v2 version has been tested in ipq806x/ kernel v4.19.84

build-tested (master):
 - ath79/ kernel v4.19.84
 - ath79/ kernel v4.14.154
 - ipq806x/ kernel v4.19.84
 - lantiq/ kernel v4.19.84

runtime tested:
 - ath79/ kernel v4.19.84 (only short testing)
 - ath79/ kernel v4.14.154 (only short testing)
 - ipq806x/ kernel v4.19.84 (running fine for the last 4 hours)

I have not tested old/ unaffected kernels (v4.19.82, ...) so far.

diff --git a/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch b/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
new file mode 100644
index 0000000000..7e40180b93
--- /dev/null
+++ b/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
@@ -0,0 +1,68 @@
+From e3c57dd949835419cee8d3b45db38de58bf6ebd5 Mon Sep 17 00:00:00 2001
+From: Hauke Mehrtens <hauke@hauke-m.de>
+Date: Mon, 18 Nov 2019 01:13:37 +0100
+Subject: [PATCH] backports: Adapt to changes to skb_get_hash_perturb()
+
+The skb_get_hash_perturb() function now takes a siphash_key_t instead of
+an u32. This was changed in commit 55667441c84f ("net/flow_dissector:
+switch to siphash"). Use the correct type in the fq header file
+depending on the kernel version.
+
+Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
+---
+ include/net/fq.h      | 8 ++++++++
+ include/net/fq_impl.h | 8 ++++++++
+ 2 files changed, 16 insertions(+)
+
+--- a/include/net/fq.h
++++ b/include/net/fq.h
+@@ -69,7 +69,15 @@ struct fq {
+ 	struct list_head backlogs;
+ 	spinlock_t lock;
+ 	u32 flows_cnt;
++#if LINUX_VERSION_IS_GEQ(5,3,10) || \
++    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
++    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
++    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
++    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
++	siphash_key_t	perturbation;
++#else
+ 	u32 perturbation;
++#endif
+ 	u32 limit;
+ 	u32 memory_limit;
+ 	u32 memory_usage;
+--- a/include/net/fq_impl.h
++++ b/include/net/fq_impl.h
+@@ -108,7 +108,15 @@ begin:
+
+ static u32 fq_flow_idx(struct fq *fq, struct sk_buff *skb)
+ {
++#if LINUX_VERSION_IS_GEQ(5,3,10) || \
++    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
++    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
++    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
++    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
++	u32 hash = skb_get_hash_perturb(skb, &fq->perturbation);
++#else
+ 	u32 hash = skb_get_hash_perturb(skb, fq->perturbation);
++#endif
+
+ 	return reciprocal_scale(hash, fq->flows_cnt);
+ }
+@@ -308,7 +316,15 @@ static int fq_init(struct fq *fq, int fl
+ 	INIT_LIST_HEAD(&fq->backlogs);
+ 	spin_lock_init(&fq->lock);
+ 	fq->flows_cnt = max_t(u32, flows_cnt, 1);
++#if LINUX_VERSION_IS_GEQ(5,3,10) || \
++    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
++    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
++    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
++    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
++	get_random_bytes(&fq->perturbation, sizeof(fq->perturbation));
++#else
+ 	fq->perturbation = prandom_u32();
++#endif
+ 	fq->quantum = 300;
+ 	fq->limit = 8192;
+ 	fq->memory_limit = 16 << 20; /* 16 MBytes */
--
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
