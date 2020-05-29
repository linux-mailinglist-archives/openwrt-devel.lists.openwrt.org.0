Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158B31E84BD
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 19:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RgWXeoc99UU1jj/+4r/SGPAOgVi7WcxVdreKOjmQXMQ=; b=mZ1LcEJ1NrBhtO
	WyMwtFVNzZ1qRoxtBdw4S6mtSoZbiplRnELa6DNnv1RFp5JsBdsiN8BUDTihBAOYJOjSOXhySV0Ku
	r7zAZ2GNZAHbPRSC9apztGpqHyQmWXB2L918rs7GfBc39tHVzmWCMMtK4on8VbFpjAoW2EjQO75dY
	QKdYR4Cpcv68nFSoWAIvFl9xnkPKiKLstPyo9rHp+OiSoBD8YXAPNAiKsaF3qAhKUlS9mAlU0U4q1
	g4alyibXLY/Mc8eBTYAnNXESRNqBUygHjtGAgrACAotUsGFs5BPS0c0RlLP6RHGmRJy0cKpMsoHrT
	X1NCbuQok9znxSMGQG8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeijK-0003wK-Bp; Fri, 29 May 2020 17:23:38 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeijE-0003v1-1u
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 17:23:33 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhDEo-1j1pXh1zJC-00eQA9 for <openwrt-devel@lists.openwrt.org>; Fri, 29
 May 2020 19:23:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 May 2020 19:22:35 +0200
Message-Id: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:alaP1Qr9CKAjY0bUSEl1qJcwEF5Da/UYlltr4ampU14BT8vUa/l
 ht1O0atvRpdfQnDmZcC/o6crgaq8GgEquVL+rhylQnWyy7u3yyNPk2+sAdWRiRxILJkGg+M
 LkPb4ojzgGfTGJ0/b05CWVhjnLRR53q5Y12x3bwkhttpOZn1ySX5/GmvmK+KULFRe7q4/NM
 2RtjPfaHwzOkAaNvdgo9Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+R2H2i6ljnU=:kWEdNYpG1FEFMP7a0oKWZO
 nVVnqDJP/XdYYwOZMY2suGJ0QLtgactM0yxqgDhf6SJtPbsZaoN8yV28TI/84RjlHxms77O06
 AdSyKrHYUwzaczT/I6T8TOlqkjGIjd90RjSogEwTz4HpUin55UMEOcrsusUNeeSA06Q6Kk4BT
 OxjZIICCTuVRz5z9Um9Jd9WthE1qu1lQ31R7JRDYOC8ygjMEj8iGVqib1BIPLA+5mypEWS/B4
 ONpGpHWNwWYXAmHtCsAWerSBbnTvrzV25xBKYDlk2GQwXFQTt+1Wccj6jvbbPyZa9rJdOTfIs
 nOf+3q94JF2Dzh63yRW1qEUkzA1Pi6iZxQZCcYXzZ4GmMuAWb+xH06EHDx2Id/UZo7UDOvwn1
 dBOi6KQXxRx9ENUkI0DsX9/hpcApNBlu6bdQ0mHv2Zq72SLiPavzOl9fgsmv4OZVu0P+3mpwc
 d4Lw9wcDKOl9IArXmPlykvr6xHefGW45cUIbf7pL0k7BBQ8ip7Gg1k5KsTESzRlkDhBSpZCQU
 0p/6Lev+zt7bjTeyD8kkZ6PWWxS+W+0z580soXXuZP/m01gRMkZxB6EU3zlvNsPYMex2EyN6q
 g+wAniz2zX7qn7r6a+YKVm7i0JW3bEjtjNFai+aFZu/S+paVd0dZAnwdb70e5FFygGYWXqUQm
 CVvSFMCZFtnCcL0htYKaCbIRSWG9AnNwubi8JSK217QiYJ7LEX4Wx7NoGJ+BarMCSXROiJ+Ww
 ioPd9pTCcfIr+1sYprohp6DrFYsgJodhZFrsVSPoznuZFY2ECdfPQ85hOa4E74WNkyHHf4ySi
 7aP24qCeuUUoCuxUZ5C4qmBVeAZCWNsjPbH3wDtDlBbAK7OjMghOyAwEiUcoP4WtAbv3x5N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102332_391303_FC4FFA5B 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/3] treewide: tidy up use of DEVICE_TYPE
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

Trigger by the recent patch from Linus Walleij, I take up the
problem of inconsistent use of DEVICE_TYPE in OpenWrt. This
has already been partially discussed here:
http://lists.infradead.org/pipermail/openwrt-devel/2020-February/021809.html

Effectively, DEVICE_TYPE currently is a per-target variable, but for
some devices it's incorrectly used as if it was a per-device variable
(which seems to not have any effect on the package selection and
has unclear effect on the switch in busybox package).

This patchset tries to solve the problem by
1. removing the misleading per-device variable assignments
2. consolidating the available options: router, nas, basic
3. renaming the variable to prevent similar inconsistencies in the future

Adrian Schmutzler (3):
  treewide: drop DEVICE_TYPE when used as device variable
  treewide: provide consistent basic DEVICE_TYPE
  treewide: rename DEVICE_TYPE to DEFAULT_TYPE

 include/target.mk                    | 7 ++++---
 package/utils/busybox/Makefile       | 2 +-
 target/linux/apm821xx/image/Makefile | 1 -
 target/linux/arc770/Makefile         | 2 +-
 target/linux/archs38/Makefile        | 2 +-
 target/linux/gemini/image/Makefile   | 2 --
 target/linux/kirkwood/image/Makefile | 1 -
 target/linux/oxnas/Makefile          | 2 +-
 8 files changed, 8 insertions(+), 11 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
