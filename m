Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D2312DF70
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 17:19:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LPj3BcIOi1kjEUVnciNVU4b6s1mPAGObATdmWqfTp0s=; b=q7gr1KPpqLor4xaWe0xK00PUI
	0sG1VD6hNd4kS8gQm1EK1WFIPWPNhoQquBbJ8yfuDQ2LRJiHWGRiPBkA05Z/fj8AWScPc9sIHa+ea
	RkEMsQgQmizD7GS9CJBqnr9SMev9H7mje6dNhZPebVXpkuY97cA0rqJe7qrFXwHk3I5e/lpmJb0iK
	ShXoo+UK4wU3X5n6Nl8TojTujQ1dHQ5vVnkKtRmVuMaycowPm5f28H3RO/oAKKTayGWvNOnZ1NIS+
	yurVpGEVH+e18Z2J7ovggUiKLqtda0ZQ5JxBraMozDIlKUwS/rTyCVRsPAia6pVpBhmptcOGDs0z1
	qNAgAwwOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgiG-0005Uz-A5; Wed, 01 Jan 2020 16:19:12 +0000
In-Reply-To: <20200101161447.GQ70184@meh.true.cz>
Date: Wed, 1 Jan 2020 17:18:59 +0100
References: <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21639.1577895547.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
Content-Type: multipart/mixed; boundary="===============2140982210514533271=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2140982210514533271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2140982210514533271==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06011901.me.com ([17.58.23.198])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgi9-0005UD-9F
	for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 16:19:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577895543; bh=OzsKeG45qGRsLARxScemhXVK5/z2Nt/EAPCYZzAkjgM=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=UMyo8Zu6xOrAwXPoV7dWNEPHSDv3IWfe5V2ZSUjol7fgdMq2u5fItbz5EdWEKsKlY
	 jfrvpACP7X8G6MqNDpPvzTVjNbcsWvnC/gCxEDaS06dLvgdaQvmAompdO00O+iRvFI
	 nvtrypXliYuRgzqBqcW3MKjmO7o5QwMjogXGs4+rgVjNtsIMj3P7rUhS6SSaGAAARK
	 FYW9t64FlWfuVk+kOnRUsV/oVG7nZeISxOXpHp2ns7MG/fYsogcQhpNyjyE+uOjix6
	 LGiBb1dLJr/DqCjoOKVrZrd+4vBJdAUnHMcQU7+uWbYL4icL0iJfY60HYzMdo0HBCT
	 yDzpCehWypJxg==
Received: from [192.168.176.103] (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-ztdg06011901.me.com (Postfix) with ESMTPSA id 88448A60E2C;
	Wed,  1 Jan 2020 16:19:01 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20200101161447.GQ70184@meh.true.cz>
Date: Wed, 1 Jan 2020 17:18:59 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <67D26BEE-41EE-4C4F-BF5D-90FC63194A04@me.com>
References: <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-01_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=792 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001010147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_081905_338349_7D31754C 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.198 listed in list.dnswl.org]

OK, I have planned to do that anyway, but I have a good reason not to =
delay that work...

> On 1 Jan 2020, at 17:14, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2020-01-01 15:14:47]:
>=20
>> The updated procd did actually allow the upgrade to proceed:
>=20
> Ok, thats interesting.
>=20
> Can you find out which commit in procd actually fixes it? It should be =
enough
> to change PKG_SOURCE_VERSION in package/system/procd/Makefile to the
> respective hash:
>=20
> 1. build with =
PKG_SOURCE_VERSION:=3D5ed190aae1b3985719046f4c744e311fc9ef18e3, test
> 2. build with =
PKG_SOURCE_VERSION:=3D6544e4f1fbdbb92df8a3776e449fdb5602b8ddcd, test
> 3. build with =
PKG_SOURCE_VERSION:=3Dff03f3ed9b6af8b209dae63f24790664c94bd916, test
>=20
> Thanks!
>=20
> -- ynezz



--===============2140982210514533271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2140982210514533271==--
