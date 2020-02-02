Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B6114FC7D
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 10:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7e8fy23D6UvX+MqVokjXRjtWYAnzx10GknGK2ZogWic=; b=sWj
	mn7dsJo+JKo9QXK+5MgglQ9JwZha1qn8wnXnl2xiamWO2b+v4mHBWBxtI//fXZLTazQeT6RJDMn9v
	hcTP4kaH7nzSckDLcUiSr+D9vSf7NKZFzMGD1L1hWtwOX7loGiR/MoUUrDmszCQz6MUAw3Usb4+td
	io9aazo1ip/thFy2gVcFdi8L7ky5NMjUlRYDdiFifs1YivlJxJgcUp0HiCmb2LFdi/BNZtuD05Zxr
	Hl2NGA/+kDDzZwBhqozbx9rfUtSL0/A1dy9dwtY8cUNvi4PhQtvjG0d0RnmWvUHXIHLHevSLFtmmq
	XtJx40FQisAgyrrZwuU1VcLba0Tacdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyBsH-0000P1-Dj; Sun, 02 Feb 2020 09:49:05 +0000
Date: Sun, 02 Feb 2020 10:48:40 +0100
To: <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Message-ID: <mailman.28108.1580636942.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: JORDI PALET MARTINEZ via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: JORDI PALET MARTINEZ <jordi.palet@consulintel.es>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] support of IETF v6ops draft
 draft-ietf-v6ops-464xlat-optimization
Content-Type: multipart/mixed; boundary="===============6518965908329186132=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6518965908329186132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6518965908329186132==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.consulintel.es ([2001:470:1f09:495::5])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyBs9-0000OL-Dx
	for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 09:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=consulintel.es;
	s=MDaemon; t=1580636921; x=1581241721;
	i=jordi.palet@consulintel.es; q=dns/txt; h=User-Agent:Date:
	Subject:From:To:Message-ID:Thread-Topic:Mime-version:
	Content-type:Content-transfer-encoding; bh=1GyuOpZu7yNjXzPbyBbRn
	jpgCuSB30AKChW4X+O2YrI=; b=cUOL6KBIgonDMA88HmfjoSZrJj0o6esOyNTYO
	ryg6wQGJlXjVm2ys40b5U48mD81CLZsIC1I4D9QIAkVgHp9fL8EM7F38xV7rc4Qf
	a4rm1xLhKQs2igW0YfezjzhCDRuj07AP1b3o/D+vsIFYIzuAaSZfxniS3PHharlx
	LPRAAo=
X-MDAV-Result: clean
X-MDAV-Processed: mail.consulintel.es, Sun, 02 Feb 2020 10:48:41 +0100
X-Spam-Processed: mail.consulintel.es, Sun, 02 Feb 2020 10:48:41 +0100
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on DNS1.novagnet.com
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=14.0 tests=BAYES_00,URIBL_BLOCKED
	shortcircuit=no autolearn=no autolearn_force=no version=3.4.1
Received: from [10.10.10.144] by mail.consulintel.es (MDaemon PRO v16.5.2) 
	with ESMTPA id md50000047364.msg for <openwrt-devel@lists.openwrt.org>;
	Sun, 02 Feb 2020 10:48:40 +0100
X-MDRemoteIP: 2001:470:1f09:495:f448:1c20:b1b2:a228
X-MDHelo: [10.10.10.144]
X-MDArrival-Date: Sun, 02 Feb 2020 10:48:40 +0100
X-Authenticated-Sender: jordi.palet@consulintel.es
X-Return-Path: prvs=1301decd68=jordi.palet@consulintel.es
X-Envelope-From: jordi.palet@consulintel.es
X-MDaemon-Deliver-To: openwrt-devel@lists.openwrt.org
User-Agent: Microsoft-MacOutlook/10.21.0.200113
Date: Sun, 02 Feb 2020 10:48:40 +0100
Subject: support of IETF v6ops draft draft-ietf-v6ops-464xlat-optimization
From: JORDI PALET MARTINEZ <jordi.palet@consulintel.es>
To: <openwrt-devel@lists.openwrt.org>
Message-ID: <61567E88-E29B-4EE6-9F0A-D7E5302B2E88@consulintel.es>
Thread-Topic: support of IETF v6ops draft
 draft-ietf-v6ops-464xlat-optimization
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_014857_986148_4453BF1B 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Hi all,

I'm not sure if this is the most appropriate list for this posting, otherwi=
se, please, let me know other options.

We are working in a possible optimization to 464XLAT, in order to support o=
ld IPv4-only devices such as SmartTVs, STBs, etc., with 464XLAT, avoiding d=
ouble translation (CLAT and PLAT) when the contents are already dual-stacke=
d in the CDN/caches.

The document has recently been accepted as v6ops WG item:

https://datatracker.ietf.org/doc/draft-ietf-v6ops-464xlat-optimization/?inc=
lude_text=3D1

I suggest, in addition to read the intro, possible optimization and problem=
 statement (sections 1, 3, 4), to concentrate in the section 5.2, as it see=
ms the best approach, as it doesn't need any change in the operators neithe=
r CDNs/caches, infrastructures. Only requires an internal CPE "coordination=
" between the CLAT/NAT and the DNS proxy.

So, I'm wondering if any of the OpenWRT developers, may be interested in pa=
rticipate in this document and do a proof of concept using OpenWRT. I'm not=
 a developer, neither my co-author, so it will be not efficient for us to d=
o it ourselves, but we can get involved in the testing, of course.

Also, if this is implemented, then we have a solution for IPv4 only devices=
 behind the CPE, to talk to IPv6-only services in Internet (section 6). Not=
hing new to do in the CPE for this, just create A RRs for those services, e=
ven if they aren't connected to Internet with IPv4.

Thanks in advance for anything that you can suggest to approach this, and o=
f course, for inputs on the document!
=EF=BB=BF
Regards,
Jordi
@jordipalet
=20
=20



**********************************************
IPv4 is over
Are you ready for the new Internet ?
http://www.theipv6company.com
The IPv6 Company

This electronic message contains information which may be privileged or con=
fidential. The information is intended to be for the exclusive use of the i=
ndividual(s) named above and further non-explicilty authorized disclosure, =
copying, distribution or use of the contents of this information, even if p=
artially, including attached files, is strictly prohibited and will be cons=
idered a criminal offense. If you are not the intended recipient be aware t=
hat any disclosure, copying, distribution or use of the contents of this in=
formation, even if partially, including attached files, is strictly prohibi=
ted, will be considered a criminal offense, so you must reply to the origin=
al sender to inform about this communication and delete it.





--===============6518965908329186132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6518965908329186132==--
