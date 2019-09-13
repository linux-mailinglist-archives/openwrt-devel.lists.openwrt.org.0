Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6048BB25B3
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 21:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Muq2otbRAkdKjts3Tt49bSQ+S7oNzsvfKv9UbIp+zkw=; b=dPa
	gJVmxQ3TXidBzegoOJVLcaHiwxXmz3j6gy2c/9Y9XcEhzFV145ojGdDoCKew1Z84kskQ+mh6viXpQ
	Yp/C17GQg49q0m9gJIoK+ZzSsPzBGxJmqKqyvsGphX2/Q9DYShlr/DYK9jCe6eBkVKLKYGn2BpOzV
	54mTLR0fgUy4s4aJWJZ5NaK0Gr76Uw6ZeX1rFrszif6D3eKH6FTifMk5Ch5x2wWea1uMKpdmDqeP6
	vuGOMaMrVnIfzAg0zoeSPjZR7UvAvohA5/Zxq1Byv+skbmG7q9NOvY+V6lWza8llTHIWOioaVIb6I
	N2BheJ90+2INqOTi3/PwcXqhbfqYrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qty-0005fk-M4; Fri, 13 Sep 2019 19:06:38 +0000
Date: Fri, 13 Sep 2019 21:06:21 +0200
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.24760.1568401592.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Ivan_H=C3=B6rler_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?Q?Ivan_H=C3=B6rler?= <i.hoerler@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688  kmod-sdhci-mt7620
Content-Type: multipart/mixed; boundary="===============5171878671280242858=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5171878671280242858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5171878671280242858==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-zteg06011501.me.com ([17.58.23.182])
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qtq-0005fQ-3u
	for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 19:06:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1568401585; bh=eviUOaOnl9QZVE5kAYgye3lox6mbL+NlMukTTiYVPIg=;
	h=From:Content-Type:Subject:Message-Id:Date:To;
	b=BRCRwPbZEJcqkz5tm+R4MyNESO9X8Rzk2IeDzI0gAGShND2322iIWVQvO3uM9UgCr
	 lP2YrrvEkJnjgYiKDWkZ1dlk2DTWrYsb+XOm8EmIR5czCDLccssJtUZYqmTrvLuqb6
	 uuY9SRdHxIeqM7lfiNtSTM8GDnLUkU2mKB1j8pxMLgnDoA5dMrDzOHEP+dZbLvzkiP
	 +66Pf/Fhj0tm+c/YEONpQWNZ35cM4+Fzn3RZFocx9VRlLKgZXPy5vjpRoSGYJdSM4j
	 v4VLIGJ6w4C0FmUZjCTEsMKNzV0ShvjyKeQdq7FogUJnhXPc0FD8b9hRCjQBOLqRaS
	 9FAzVpDH8vfwQ==
Received: from aarau.fritz.box (unknown [81.221.232.148])
	by mr85p00im-zteg06011501.me.com (Postfix) with ESMTPSA id A518C2A0C55
	for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 19:06:24 +0000 (UTC)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <i.hoerler@me.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688  kmod-sdhci-mt7620
Message-Id: <AB3E8D5F-A00F-4A80-8411-0A615918B92D@me.com>
Date: Fri, 13 Sep 2019 21:06:21 +0200
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-09-13_09:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=317 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1812120000 definitions=main-1909130194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_120630_170656_D6D0E826 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [17.58.23.182 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (i.hoerler[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi
I have a question about how openwrt handles packages needed by a target.
The Linkit Smart 7688 has a SD-Card reader that does not work with the =
official build of openwrt 18.06.
Adding  kmod-sdhci-mt7620 makes it working.=20
I think it would be nice to get a fully working device when updateing =
with the official build. Right?

So i had a look in to the files and found=20
openwrt/target/linux/ramips/mt76x8/target.mk=20
and=20
openwrt/target/linux/ramips/mt76x8/profiles/00-default.mk=20
where some packages are defined.

Is one the right place and which path is the right one to define a =
Hardware dependency?
Thanks.=20=


--===============5171878671280242858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5171878671280242858==--
