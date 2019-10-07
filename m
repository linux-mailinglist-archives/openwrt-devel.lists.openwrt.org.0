Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AC3CE8A1
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 18:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wpzE+iP7E8UKKlvNf3vfaoI9NknLBz3EIgsLnIygH/w=; b=tzBpHIqygysTjK
	qW4Kqk3DknuNdzbu9X8FlBWB4ycrF33ASnzcJqK5lUWMKLcfisRTb5/lF+8wrNr+C3aRo8SNBPIi4
	P5YTSSJTeqLt2NWq6pxbPTtnnSOd4dK3i6TRysbq92XDbtkMijp3lJbhZ1nc7diYQ9Ca1u6OCaJ7Y
	lrJvix7rK/1soasoq547KFXZCSLtN5cb6m/bK5jtwG8kBEqcaNpaz0+rc1JFn7lBlLKoMR8q7ynDB
	X6lYYm5MID8e5NkqXWXDGArGKaEtgZB9swx01/qPw6ASfD6EJqInLbmpdnzF53zRWxdA52JfjVBqo
	NLm0zFU6Z0xM22vBy3WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVXY-0004t2-4B; Mon, 07 Oct 2019 16:07:16 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVXS-0004sh-NC
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 16:07:11 +0000
Received: by mail-io1-xd35.google.com with SMTP id h144so29736810iof.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 09:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9fDTcDz0QDZTbxIH1yUk0j3P5Rw/EGnB2oA27hhfW98=;
 b=r86q8K3wRQgw7ByZU7OVIq/mTm8qdOGeWdAb+oieHba/61ndO5k7Pt9h2efYI76ZAM
 BtFW75oY5hnlTVxfk95s5oKOQ/ymfbkZvtWIfXk5xoBpGEm4/Z9EApELA/qv/Bk4rl5C
 NihvovzejR/x6jjvd97aescUlavG9DpGNNU1ksSvx+5PPEDUbWNJaUd7wbvGyuz4WnQ8
 HAgWTYUNG1Vcowqda9s5FXuLXP56tihazYQxdkU6DaDSRvSZl9f14Nzi04bWF2iwZm0d
 YbTJ+8WU4h08PW2nrnPl0tBDZs1BMvg+vN18DWDnSL22yksiUZvhBOyv7LWalNEWRWfk
 QDew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9fDTcDz0QDZTbxIH1yUk0j3P5Rw/EGnB2oA27hhfW98=;
 b=IEn3nO+5qOEti+6zY0VPjyK4p7wJGcH9iyimHog0kdzOY4CHeJj0xUV5McRZmCUdoi
 88tSU0BAeB5IAPQTd9rzIDQDYj56MZi79W41YzvWImSFoNlsb5sUrNMjyd2Wp8maqqLx
 /1gZxWsoLFisrFVhLiI+0XP+LdxUtWZZVgeY3AG/hIiViwjHLscfkJdIfwFZ/TzfnM8v
 gU26TZ2QWHzTCDtXVCpYdKekjap1XxvSBmfWRQt0VueXNRiGS0jZ8Hf5+wnm8hI/o9jE
 2tLQP0zcZf/BV8UmVNEleH6NZ399kK3IGkKBVwnQjRVgLf9feXa0ioYO7RTrUth+WRIu
 j20A==
X-Gm-Message-State: APjAAAVWb1f2480BdiHh5BbeoGNWbWj5CFnnDDewZi15d+vLMK3AmLz9
 zGJ5Iq7ELiV20PgdEzFyxq3AwrNKqhM=
X-Google-Smtp-Source: APXvYqzXGNLmDxzJr+BoUYJuMUF9lInMiyzBqGrfHj28HRZtBi0MPuDykLXPKitTbJXH4WLixToSmA==
X-Received: by 2002:a6b:d307:: with SMTP id s7mr26087570iob.39.1570464428859; 
 Mon, 07 Oct 2019 09:07:08 -0700 (PDT)
Received: from vk2011.homelan.kkf ([2607:f2c0:f00f:5900::6])
 by smtp.gmail.com with ESMTPSA id z2sm1023724ilp.86.2019.10.07.09.07.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:07:08 -0700 (PDT)
From: Val Kulkov <val.kulkov@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 12:06:52 -0400
Message-Id: <20191007160652.21273-1-val.kulkov@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_090710_755587_B39DE447 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d35 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (val.kulkov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] base-files: coreutil-date breaks setting
 kernel timezone
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
Cc: Val Kulkov <val.kulkov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

"coreutil-date" package from the packages feed replaces the Busybox date
applet by symlinking /usr/bin/gnu-date to /bin/date. This prevents the system
init script from setting kernel timezone because the GNU date utility does not
provide such functionality:

   root@OpenWrt:~# date -k
   date: invalid option -- 'k'
   Try 'date --help' for more information.

A specific reference to the Busybox date applet prevents alternative date
utilities from breaking the system init script.

Signed-off-by: Val Kulkov <val.kulkov@gmail.com>
---
 package/base-files/files/etc/init.d/system | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/base-files/files/etc/init.d/system b/package/base-files/files/etc/init.d/system
index a98a972469..0e33c522b4 100755
--- a/package/base-files/files/etc/init.d/system
+++ b/package/base-files/files/etc/init.d/system
@@ -27,7 +27,7 @@ system_config() {
 		ln -sf "/usr/share/zoneinfo/$zonename" /tmp/localtime && rm -f /tmp/TZ
 
 	# apply timezone to kernel
-	date -k
+	busybox date -k
 }
 
 reload_service() {
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
