Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F26A107E04
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 11:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iBPdKvQrERuyH7pNyXkgyNc8rszDpqB3MVOrFplvaiI=; b=b1W3ipBoJUV+pi
	Ef8bAuEmUEQiPZ+v5eqCtnMqaE7lWM7+gNigw+5LwVGZNICih9zm2fGDgWNIY6JrDobyDjC5bp3Lr
	Sna5KDtQHeEk9bl6BofntP2uqJ1j/fp14zgNWOxyWSgyCinvj6O8qVY9yFdMo1dU3Id/kvrW8rl4I
	DodVuSSr7YTyzZ6b1JArbpmGmtP3czcItTehCQ7ISrox0OBH2ForEuI7fU1s1oe+oRYaA5jhm8Sqj
	TypVSo3/xLxapB5pJCIXQTTJEerjVXuVOBwyLMfGsPYjgn+TwUGF5ALWoda1TLQmIugiP1m+o710l
	lKYhmZ7hTye546zb6ZJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYSbO-00075U-SF; Sat, 23 Nov 2019 10:25:18 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYSbF-0006Kc-2F
 for openwrt-devel@lists.openwrt.org; Sat, 23 Nov 2019 10:25:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574504703;
 bh=CIJJVIzslZ8nhCMQhOdFkn1oUBHS6sxMqPQljUNSHpw=;
 h=X-UI-Sender-Class:Date:From:To:Subject;
 b=janG6gRwADovzwGLu6dJyWRGKWa2YQXRx1EM1qKHvuJuCnIo41KQNSJYl8ISib3co
 8xCRWcDGfgps7qxFurJoS9RhIbmoJMWAn/tQLI9l+eeGzscM2flYKmq7t1iK3TPNq3
 tfeBzl2Um0gOHoKKWSI/jY7b1DF8PzQDXWmczgRI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.236]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MfpOd-1hsXCQ21yT-00gHoq for
 <openwrt-devel@lists.openwrt.org>; Sat, 23 Nov 2019 11:25:03 +0100
Date: Sat, 23 Nov 2019 11:25:02 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191123102500.GA1227@darth.lan>
MIME-Version: 1.0
Content-Disposition: inline
X-Provags-ID: V03:K1:iezoFHitlCyMqkILDO0UxNsR9OsiVmYnuTMa1Mpp+aupjGGI6Vt
 Zdudg357bgl3j9cL6wWaix0gGNiHIKhxJnNpuB/7FqHoQrUjg7tchJjRBZy55EC+ZgytgLx
 uOIWrCBJTAas8+EeTPOwfC7YgRF22yP6Kixv+UPqipBNTRAm0erFj05kvpcEDfU031BZGta
 feKCarU0p+jFZ3+hdZHjA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kVWKtXByQpw=:vcZpxuioTf5yNncWYsP1x3
 JDeseA0ag8EXcMV0QGN5KLFbtMobV6JRq1L3d733/TYitR6mVmArv+xMkuwS+8ybMAETAZ31f
 pZu/rJIbmwgE8+6MoxU2663FLvgca04leJjtFsXUAioiLb/x90TZj5R4JS6vePFiU0kuBiFMD
 1FkzQvM3kFvDmpYrIsxe6IPU9jhCZO6YjsCGEvbWxOuKywfVPjozkKMo85p/b94MXjWXfHW6O
 DrVDmHf5/aWGh1yZnHpWRZfY0WwVxaE1GRhfD+ZXS7VmjowDPaHLJxTSLqhSNXDn9AYzJZRkb
 8fJcaRBFNmOBTOvADYRKt+7SaUJUokW0LGjazLZBtA3bIvsSw8TVUtpxe/9aT/ceRBUFbovTe
 w11IU1babz+PYefgEhW8Jvn6e8JPW2eIfGH1E0uVuxLZoITsdtxkC5aH89rJvElEVGFa7GV3N
 X4A6EsNbitYC7sQU8wzDfgJiI8NP3fovIAHPOsoH8k9p5mSASbxyMhbnzNEsmJBxzdxu139Ac
 7b/IZpPpvrOEFt5zw4XFPLeolP5o3fJhV5+tAkhXvtRdDG77NdEwll03qeaPv2Fjcp87noEL8
 yr2fU7Vuek+72JP+USbIackyGBlRDc/4pGidNHIxxMcECJYMeoMQiPPwf20WfQabmTiDAe6Xm
 2A5uGV5c4RYSCOcfpjK0jIG+WFRSBbyx6TGhYxRPr6b2CDa6Z4N3j2CK0PMoJGg9d3VKsJjRv
 RUafZz3hZtCBj3GPftEQiwok8VPq9SFjIXMHOYTrD1D5mja/u4sDqB61iFubeDIZjx2/IuR7y
 nIpyq8uhcWTj2OM4HbkVY4qYIQm0/pYlAOah3P2Tkn7THcv9CMx9pOUOQSruiXLIoedmeoKfF
 +8frxez2Qv7YrZA6Gz9D9Uoh6QYi5mWaf4v9WR5QpB4D+n5YcDdNfx59lvUyc5StWOjnVFh5T
 ZcKZ616Yz4vOdVmv6Zhet9tCIpnrMmM+q4lOMms55b0JJVTuvgLjAXY/7x5Z9HhvqNrKdlUZZ
 LkshcGFHz/1BrFLCMFpaDUoBKJV1I0tjjcjkUTed2uZocHWIEolGRbSwwj8RDNmtCmLsCB5xu
 SCVWxg+rP+9E5UyAS5mHwSApIOugwOdi5y563Qw403y4+Kqc//T1xb9nyobesUJbZRrDXMV6m
 ttRLlXJ0YcK/G8Id6XTAe98PsalULAPpJpy+LPlILgAx9TaYvoHkHNwzQqWXN3GRSx8BD5VQI
 C891kpCgw2qvXgz+LhMwmuxcW6B9l5lwAd1KM0HHNDhKqNnD78tkJD3jepXU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_022509_443249_EE185792 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/1] mac80211: add default value for noscan
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

Commit b3d8b3a introduced a new test:

[ -n "$noscan" -a "$noscan" -gt 0 ] && hostapd_noscan=1

But if length of "$noscan" is zero (noscan is not set) this doesn't stop
the shell to evaluate the rest of the test.

root@hank2:~# [ -n "$noscan" -a "$noscan" -gt 0 ]
ash: out of range
root@hank2:~#

So when radios are brought up this shows in the log:

Sat Nov 23 10:51:38 2019 daemon.info procd: - init complete -
Sat Nov 23 10:52:24 2019 daemon.notice netifd: radio1 (1243): sh: out of range
Sat Nov 23 10:52:25 2019 user.notice firewall: Reloading firewall due to ifup of wan (eth0.2)
Sat Nov 23 10:52:25 2019 daemon.notice netifd: radio0 (1242): sh: out of range
Sat Nov 23 10:52:26 2019 authpriv.info dropbear[1536]: Not backgrounding

This commit sets noscan to 0 if unset and removes the gratuitous length
check, preventing the warning.

Signed-off-by: Sebastian Kemper <sebastian_ml@gmx.net>
---
 package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index a04f1e3ca7..5c67ea0600 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -106,7 +106,9 @@ mac80211_hostapd_setup_base() {
 	json_get_vars noscan ht_coex
 	json_get_values ht_capab_list ht_capab tx_burst

-	[ -n "$noscan" -a "$noscan" -gt 0 ] && hostapd_noscan=1
+	set_default noscan 0
+
+	[ "$noscan" -gt 0 ] && hostapd_noscan=1
 	[ "$tx_burst" = 0 ] && tx_burst=

 	ieee80211n=1
--
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
