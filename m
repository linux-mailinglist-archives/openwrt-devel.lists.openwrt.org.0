Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9259B11B8FC
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 17:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:To:From:Message-ID:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3V3HNgauDphYzf11jkUdlyofDGZKjkbFs7i/jbT0sks=; b=nP7
	oGagOLqbvfRI8lwEyEDehvSUBKL56aZznaVVy55xxX8vx5bMJ1vsTAvVM5rjKxB4ar+DjjRubnbsF
	OExEOzek5pwmyelimbIJtNlkLmHGQMKFEX0T0X8IMOkcNKR+kYaGnUt3PeU4LwoLtlXioxymFroPn
	9Y0l5uQ2bffjTKk9eZMIhDVNy911HB35UviyJ1tXY0qBT2dBQbs5dsgTieEp/uCy58sy1bIv2Amdd
	gbW1U/jq3iXkyUTLUKsXFvYl1DykUGRMUeFN1VjpmYmsm2H2OdxO81iYEUo5zwrLvQejGR6Z57O1x
	2WTbaQnMde2Gh/MzZb++fW/DwBhn6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4za-0003ss-RD; Wed, 11 Dec 2019 16:37:38 +0000
Received: from mout.gmx.com ([74.208.4.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4zS-0003sK-6u
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 16:37:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1576082246;
 bh=Ys2fzYCgG6fYq2DFnuKKPrzznWjIDqicwief/l5M3wc=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=2BThPuEJSyhaiNXMLDQx8+ig1aZh+kKRExYlgglMTtaY8hcY3aRjOHl0KqO+9HCN2
 Ih/4CJdpfuazg4pJAkfjpEew/6MnIDbeqE3bLN2P/Vys5giiG6jef4CFOWGxBYfl86
 U4byK45pevgnGxXuhf0XsjttODg298FsRas4aJhs=
X-UI-Sender-Class: 214d933f-fd2f-45c7-a636-f5d79ae31a79
Received: from [96.21.72.184] ([96.21.72.184]) by web-mail.mail.com
 (3c-app-mailcom-lxa07.server.lan [10.76.45.8]) (via HTTP); Wed, 11 Dec 2019
 17:37:26 +0100
MIME-Version: 1.0
Message-ID: <trinity-108cc2ee-b593-4dec-a1d9-77c447ee9eed-1576082246699@3c-app-mailcom-lxa07>
From: "WRT Burner" <wrt_burner@mail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Dec 2019 17:37:26 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:PRqGhOXzqDzMX7PVt8lWO/o+hGo9DrbGVfyujz0BmBbq8eEqxTiuD7My3Vp+U5MJVWknH
 N0EYpSDU8Y3WUH6G/16YKsuhI9H2p7M9JdKbvYRdElnyrXJAvxWmyQWxf5H76QW3dgyqsUSjoDHD
 RAvo7D/nvIalOo0k28NB1545jzaKMYcXAlFxYuF3/we8nIu+2Dp+m6YoEQKCO5FYFeo6cVVZi6Z1
 OBgvGxmAZX74zWb4tVfzx5P/2BnwA8PTvtZpifG3VdT3e6QXN1qfNDqtrg9BDOQC/xEwjx6fyB4G
 vA=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:whdmvkf2KuM=:3WsJ+12qaVTKw1jGCvyWR4
 Sh7wnSeGKtPX6au3x0CkJZtohJl8xhh5QVLSbMww0GZ74+khs5fYqzMJ3sVHcNZ0NxvygCzub
 6iUka6/S9kcMk2iMgX4SUtSYnnHewzPXWMbqjS73xbMeksmfgMsXQzN++DpMG5oGD58xj3Lvr
 GfoLGXdkDqHZSSuf4reDcdeLgZo+ZP9ax/guq4S593WFb9gzG28zpXe/Cvgr1Uu0LoqNkxiNC
 5WUgQMe/gJUhUsG5PzfNiqq015cFp8alKUgXp+asKPWsFOuQDxiwqXOAN5BIxYB85vpvuNTCD
 y8GNSWJg1omswWBwHblHDIlydU1AlvrJfynInfg/9XFkfWD4gJNI/vsA2cVbkhsJTXNcOWYUB
 xKSi/I7m/geMDTdMC953U3DM6DBvV0IJu0g1d7NCW5js8pLhvoEbquJW6eNBVmXCPLV45EPvV
 JeuB7PEe7KBsih2UYrPgz6h2aaeUSWAZ8/8GPOHyHwrOB+NJ+s/nvSL+esw4gpvKWZI4A8h1Y
 HNjZ8d9xxlU6MNzDCix0hrAwQPUmIVAD4fT9KXg06DVuThpS7kdrfxmSpCPHhqzZS1OEz2tMF
 PO3Bl13KE/qLunHogozmLbjbSLYN2u9EwbTwexF8qaLiVddZKUsW23snhlnssXyJ0Es9XOwRL
 YUD2MUjtfM2WAhsExAxJi8VqpkNSBEppa4kczWuscYlshBiUZqiCh2emEIz6DEw4NkOMZJ0Ej
 OI9B9yRErJt23sKg1oWZO5GcOudd7x7YbC19bXHS0n3xkSy7+FbrCAKTidA=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_083730_363003_86FA95D3 
X-CRM114-Status: UNSURE (   2.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [74.208.4.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wrt_burner[at]mail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Inquery
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

On 11/12/2019 15:22, Daniel Golle wrote:
> And it's even needless to say that
> replying to a spam email in which ever way will always make it worse.

+1. There is no constructive value in replying to spam. Let's keep openwrt-devel
nice and clean.

On 11/12/2019 15:22, Daniel Golle wrote:
> You statement "suck it" (guess what) is also an obvious
> and disgusting example of a masculist culture which hurts our community
> as a whole and I strongly believe we should not tolerate that.

-1. This is a software development mailing list, not tumblr.com.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
