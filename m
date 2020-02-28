Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93943174161
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 22:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoOB+L/hYIIxpsL+Msq45yfzt1BrTzsAj/S6OlonmQ8=; b=S2Wrwp+88VB8ew
	8mAKjGV0m9AT+8fmYP2ldD+lMU89ri0Rnpz+SUtZ4kQUy+xULe4UYVKqBDMKa3D7C7AiWT5zTsQVD
	4Dh+TAnT5BODfNz7/dNBnSWQuPE2FRDIdmRKKrH3e2P5ligTcCpYXszHJL8Cx0PEC/ak9ZHaGW6Jq
	gB6Kviz+3VOUUo1XDvYLvmvMZRS5si/Xt8WFlUFRBQeir6ZmxYKB0hZEkFAJlgi9uwzWo3sJ1uP3Y
	OeDfhqE2HEZJZDqGwqNhU/tFB27Bv0XMH+e5EA4Zd43y4CKZhXqhWG11LktZ8j8pdPKd7THgMgjMj
	4fsjWtOZLmEFEhsQfvTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7n4B-0002Qj-N5; Fri, 28 Feb 2020 21:21:03 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7n44-0002QB-5f
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 21:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582924853;
 bh=TKyFPWvzdTe7A5bj33zCpk+ttpa9sj87x0TUYYb3E4k=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=MCEXoce62y8mfijCtZBaNrGuSQlgWOB83RA0udKZmNiSn9KxB1k4WIogfsaCjjL3g
 ouNWeyyj2Un3pFgfyvEaEwMMK6SyXhpXWyS/J3DSEK/Y77+1p8ofvLIpnHmFugYsgX
 6L2HJkUvsFxpBveCmEevpSG6BG6VcaSPEuNV+Fss=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([84.149.45.145]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MRTRH-1imhRA1xQb-00NQqZ; Fri, 28
 Feb 2020 22:20:53 +0100
Date: Fri, 28 Feb 2020 22:20:52 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: John Crispin <john@phrozen.org>
Message-ID: <20200228222052.25fa02f1@mir>
In-Reply-To: <4ec68236-6677-f396-c7cb-291c5fac4247@phrozen.org>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
 <008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>
 <20200228213033.7df0aacf@mir>
 <4ec68236-6677-f396-c7cb-291c5fac4247@phrozen.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:PQVNDfgOt9narsyNHA2tYvIxpR59kGHEu55jUe24gbo1VBjtjQb
 K6pB+CcRZamN/60vmtke3Y4Hrxosv6I3iJ7tQT+rO1hZ0ajJEYIardsljFZVeC/Xk9jmCX5
 hdiQ78durFd111oiWN3XGB9A6D5V3Zalf131oOsgCd8+W3tCjlwhIjPezgh8tSV5F3Aqbra
 ipf7WykqVzpUsjyZfew3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z0H5MFWV5aY=:OSPMAdjGN6bLrAR4/gCSAt
 5+2UmN1ryhXkAqlHkBEl9Dch2Jrwdt2bmcXG7Y9Zp1SYpMwyYMWcRgK/5PtzVnQzLDr67dxPW
 nVupE2jOPb2UjrYKUdcp0U8RsWKDwUP1JUMPox/cFXMeGhc1vtRbYRA/9O3sEw89olGX6zy1A
 ZHXh7okKYR0cWGMAX6k0vo2cY+pEJ2QuMHCavRd8Se62YLkGlRA5J0bOj0WX3+gfOpgHJEOdG
 zVYoWK2YdhlEP6Sc6iKtNmk7AjLxMtWXqS463MCG0aNM1yq+irxSUXYZZ1NA1oew6a0IFqO7E
 31ZS6JfWAzVKKX2cRCs28WQsigUSBN9U5+ogkZ9P9UaMiJKUn39A8avBMCM+z3uNo/7fa//z+
 jeYXce16f6XnapYLeNoTTR+YH4PXKuTuVDc1a3Zqu9dZYixnu0fLOXUxQNVWyc5ZESsDJftxC
 ICmn8UF2aGc8khkKWJloZqurYxREB2AyiGApBTbIRg2g8Fkf+cVlqUBuDmWu8Kyjmw6TQFZ/x
 KVXGBmtcyMJdZlIynorSyukDtYSI56o8oR7tw68pzXSQkS76f2hnNUQY0nB5EdyRp+SvytV1b
 mYa3uWvu3m2dSclO58oyVIuJf9v+LKm4fkj1pao13gLUFZ5XB1v9tgLUV8t+UsEYOF6yPD8nz
 sNo3Hg/NsfIo3+20K40ZfWOXngXKVeI1evMLmrdYi++z4rZ5cVEsXSSLFhkeS0Yze6DB2/SpE
 L2C0/0QjA1VU4tgpU/nmldpq6j4xBMgU1IXEbMQO3wdHGBjmH6NUMDE+dWECQit+ETy4pU7A7
 B0cLdC7Unjctd9WkFjzMeu5DpEJVSFmbZHqtkhSPfiGgLnwKBEjITf+hXrtrKYQnmEEEWUURd
 IqLOErb7nfmWp0Lsy/Uz3JHUjzegfGZX1D+dBhHH1kH/+YmZq6OrQjkmgl0NMtj+d43gI1x00
 z7ONU3UnIEeMfmSDZiYUVUw7dAuHQAPXTcbWVDrDpld1jTzwkelWgbiDuolsZYXyC6DFpZQUs
 tDurxAoZbsg6QPy32QFmh5jApwTlJWbdVePvsP4ALhwZKNtwrdJ4FdH8V+ZGAbSk082RjWBRu
 Kj7YVdwOFJ4agTsDVmDk1/AfKPFd7iBMnKVqmUNbD4j1OlWe+jZ/aDtFJJ42dZLKoCRuD7+sA
 T7xWPc8SzTnzgcHAXNGMm0trw4vfAPLiZLQpi/3u4gMXYjVJ+7+rTxZ2p2+snFP3quXDw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_132056_503998_9960E622 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [s.l-h[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Cc: Chuanhong Guo <gch981213@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On 2020-02-28, John Crispin wrote:
> On 28.02.20 21:30, Stefan Lippers-Hollmann wrote:
> > On 2020-02-28, mail@adrianschmutzler.de wrote:
> >>> On 2020-02-28, Koen Vandeputte wrote:
[...]
> > ath79 with kernel 4.14 has already been (mostly) broken by "ath79: add
> > new ar934x spi driver" (ebf0d8dadeca443121f4f597c51bf6591e341caf), which
> > does break the (shared between all kernel versions) DTS definitions for
> > NAND based ath79 devices (breaking compilation with kernel 4.14).
> >
> > Because of "FS#2524 - ath79-tiny: TP-Link TL-WR941ND v2.4: Marvel
> > MV88E6060 regression between kernel v4.14 and v4.19"
> > https://bugs.openwrt.org/index.php?do=details&task_id=2524 I still do
> > regularly build ath79 with kernel 4.14, but in order to finish the build
> > I do need to comment out the affected devices:
[...]
> >
> > Admittedly, the affected TL-WR941ND v2 (4/32) is barely worth the effort
> > anymore.
[...]
> sorry for being dense here. what are you trying to tell us ? is there a
> bug for which you propose a patch or is this a report or just a rant ?
> honestly cant figure it out

Neither, nor. It's merely a report that kernel 4.14 support (albeit
technically present in source) for ath79 isn't functional anymore (and
hasn't been for a few weeks) anyways, regardless of the introduction of
kernel 5.4 and its changes to ag71xx. Kind of answering Adrian's previous
question "By moving ag71xx to files-4.19 on ath79, I suspect 4.14 is broken
now on this target."

Beyond that, I'm merely explaining why I'm still regularly looking at ath79
with kernel 4.14 (because of the aforementioned regression in MV88E6060
on top of kernel 4.19). While I still regularly build for this device and
sometimes boot it up/ flash a fresh (kernel 4.14 based) build, I'm well
aware that this device is far beyond its prime (4/32, buggy draft-n AR9103
wireless) and don't actively use it anymore. Therefore I consider this
flyspray bug more as a heads-up (while ath79 with MV88E6060 is rare, the
underlying cause for this regression might have further impact), than in
any way, shape or form 'important' - and I'd consider commenting out
"tplink_tl-wr941-v2" (or removing its support altogether) a valid
'solution' (just retaining images for it in its current state in master is
problematic, as they are broken and because the device requires serial
access for recovering; no push-button tftp recovery provided by the OEM
bootloader).

Regards
	Stefan Lippers-Hollmann

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
