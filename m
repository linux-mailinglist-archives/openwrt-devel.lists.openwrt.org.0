Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB6E806F6
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 17:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2bL/D6CdrzwRPGtiz3seXK7TaKcvJlykDKVfcy61wqY=; b=gUkAx7xERKYEHT
	ksQ5MOuUt+sKNayFQFMmy6XsaoGZG2bTBw2smojGk7t0grvVYjbyyGtLED8sMxLzPkSWD536Yc4VO
	3NmZTt4oN5VkSigw7j6Ff7sf3p5f1CJqYsvl6iPTYSrOLIdHCW0RR9MhAcaPozNsxrsUtgMRb8jaK
	0M0vh53Xpbq5s4g9ew7LbaONerLuEJBm0BrbinP41W6+RjvO8b8LqFDHS4mqaTdfS2z5JK8ftT6UR
	D89o61p4xLRulhcLwFi3JwxY6g3OP1sSva6vxeggNgnXPT8UIwdG+D7edqD7JNoxzFZcNGloYEl/B
	73RLki73Jc+XGCN6hYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htvk4-0002iq-1X; Sat, 03 Aug 2019 15:14:44 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htvjn-0002i7-AU
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 15:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564845256;
 bh=HWoOHsIZNfYIGX82M8fo7PBB3Y17OCIlc1/GiWpwxIo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=N74UbYToIkuDCAhC7LV8yOFZztHGJim0m4xxuVdlTqvAHFssu02OpspC1YAdj/HKJ
 UMx0ZOPERwm/ln0yHdAzvwo80UsAf3SpEZsDIP8WEZ2YpKgA5Jv6SG0w/l1jLTR4io
 L9WrgO1+Jzvt/hbhhs1oagKq5+3euPaZansKP+/w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from depc0045.ats ([77.181.84.240]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LrZOj-1iL3TR0EBB-013PO0; Sat, 03
 Aug 2019 17:14:16 +0200
From: Arnold Schulz <arnysch@gmx.net>
To: jiri@slachta.eu
Date: Sat,  3 Aug 2019 17:13:54 +0200
Message-Id: <20190803151356.18733-1-arnysch@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:GUT/ii+n+FuIDG+MyLhffYEwDuYkkdmGxvUaLjLLH4/1DFVtZ4M
 //aXY1cRR4dnor2EozFnXkW+l9QO6blPSe8JeBiVm3en8srsAIxZajqszBHZ6DUDkPWjV9x
 krZKW91zmRNZ5OtVJFJXIpcvjC2d9znWF6wOt0uqcDl0NjUHJrK7O+g3ed2alWK6PagoWka
 +bUskRwVSaxyrYvE1/lpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qbKFuizdRuc=:zlYyTxgIF/MDUA/xbWM7JM
 WgVeqC1GTQA1UbK3rThC9oitQYWB0NnVodsSNANAjX3q9kS0RPs7TkFL4JZEa/Dhh8rqsllNH
 W+iYbZltG94sktYXgbh78Rx/0TRUDDRWA2xg4bSy5ibfh2LmZjUEvhUtEKOV7L9SfcUCRAXcP
 BOj5UsJdjtvz+23SFTNShGNCeA6GbnMp51Hogv58lJsVZ8b5Q6JiTvwq4x+IqVYOubOfXcopQ
 8zB0wZodDuRtGC1d3HJzSCUiOSpelhg6k087NKpZY0KSUGBH9Hrx2rSu2Q8Asg6VS/TVXyV3S
 WI9Wtl7FB7TU4j5usZRQwF9CF7TO1ySPniQPc7n9r5piLWPt4YUzFmA3SyKv+XycCdvEkzkIj
 HwDAP75PSfl7UV1kYlnDEzJMKhljZdchxYJ0N8xIyrqUTgBjLS8DO36V2c1HAIOwsxeo7y/Es
 a+s2uiTdZ7TOGAhjvHHoCzYI2OvKr/ibfZA07CRHAKOXzNocDY2fMezbVG5TqRE5yJS/J/nJm
 3pKIFSDgEsq0jTnHsquvRsXYEu4rE9lFNv75q7lr3GD8mb2/vG9ym3EYEDbi9DOAfS415CGUf
 pcsJfZZmqVmBfDxTJ0rBO4toIWxwb5WNo5bFuzN+jPBoavWJmKFuK5vwmiTTeotoSaY/QSLZ2
 IKovGGvrstvnQ5YsU/fkHZmP9fabRE0+1XzrkaNFul+BUVzqr72PR5fweoXjpB0gWm8Oa/m93
 dzA3JGdx0pqgRCXfw8UbyGkub+gQ3ZDa6I+3m5At1Pe575ObXcS4CCrp6ZMF1X2XVbqjYM8cD
 K0GLJkOcoMxP0jC72FWm0NLPE2v/Fj7elshdbbBGLcDLG3TXYCiGGUxTF4e6yA8KIvXN/3OGd
 n/HBvNFxpkcHR0wKimumpCKW/4p4zk2K+sqJiX1PIRscd32bI4bRqkt+9HV5aITcwJaAVyInX
 sEqcNLc76dBBjwruyov0/CDLnkdK4jwE64TWLbqPw03A7ApXuKhqWsOxrgyzSrQxIh4G51RCP
 pRfz19jGII4s2B2NCcOQA/QcgpEWmqn51+wFJ9lev+yU/woRaRhPKf3oLs//Ml5VRdpe8MHXo
 R/2yiW/GOxyyIDFAytMT+RmGMzJq4LwYMfversmdAQTCKlSZP1eX0h4Mg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_081427_770930_D8A4E7FA 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arnysch[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [openwrt/telephony 0/2] asterisk16-chan-lantiq: Two
 independent patches
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
Cc: Arnold Schulz <arnysch@gmx.net>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Most important is patch 1/2, which fixes a current compiler error with
the OpenWrt master branch. This got corrected in the upstream Github
repo, so we simple refer to today's version in the master branch.
We can also get rid of the OpenWrt specific patch (incorporated in
upstream since long ago), and some linker data file (also added
in upstream).

Patch 2/2 moves the chan-lantiq package selection item into the
asterisk16 submenu. Before there was a "Telephony Lantiq" parallel
to the "Telephony" submenu, which I _feel_ is unfortunate.
Now behaviour is same one as that of other external asterisk16
packages.

arny (2):
  asterisk16-chan-lantiq: Use upstream sources from 2019-09-03
  asterisk16-chan-lantiq: Move menu item into the asterisk16 menu

 net/asterisk-16.x-chan-lantiq/Makefile        | 20 +++------
 .../files/default.exports                     |  8 ----
 ...-ast_free-instead-of-malloc-and-free.patch | 43 -------------------
 3 files changed, 7 insertions(+), 64 deletions(-)
 delete mode 100644 net/asterisk-16.x-chan-lantiq/files/default.exports
 delete mode 100644 net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch

--
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
