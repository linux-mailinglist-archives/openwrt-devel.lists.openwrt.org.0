Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBD21E8D98
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 06:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Umarp3IJSVMaQ68269MdZLgtHiymy9GDzd1F36eE/aM=; b=oxzR5iTPaWzw6kW+L0LmFz1M+
	2QLHAUlNJe+Ccijx0K7Oxnhylh61AcgzTrdunBeFYlj4NVfKApJeZjGtyxhiMnmieKL3p4yunlM4W
	Q/pK6M+24IT54Y4qP9Fp99xIrRIepZHy2TEYyW2mIr/DTtRHNtQrRYa18RUMy4MvIPBlEDVoFv5H2
	BIWDC9feiGh8EzeaKVOgnciwtFBAwllSavlwAMZbwQ+jLcDiOsGgexVlpXwGmeNGsiG7L66YwwhOr
	nIPb6bDo+PlPuAInUnwCmdrEyFX9CS9qhSqiePrfJLJgSNH3Th60Xt6t+KN9ksarLpduOcw2sAZVn
	FVo4in7FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeshI-0007l3-4s; Sat, 30 May 2020 04:02:12 +0000
In-Reply-To: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
Date: Sat, 30 May 2020 00:01:58 -0400
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
 <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
 <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>
 <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
To: Matthias Schiffer <mschiffer@universe-factory.net>
MIME-Version: 1.0
Message-ID: <mailman.18839.1590811328.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Raylynn Knight via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Linus Walleij <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 Christian Lamparter <chunkeey@gmail.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Raylynn Knight <rayknight@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
Content-Type: multipart/mixed; boundary="===============7161097778190531150=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7161097778190531150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7161097778190531150==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from st43p00im-ztdg10073201.me.com ([17.58.63.177])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeshC-0007kT-Ei
	for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 04:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1590811320; bh=0VKHNmbwReZJMkvs9zHMZbj6TtK+9BAnz7NLIJtSCLw=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=MbFH8q+qqYnn2fbwkRjtjEGcs8YbvJQAjGKRMz5MrQId4jABxjwRqCv0VXHX7uRoL
	 gxSk6JaGAWcv08np01Rqau3J0/Stz+RW3Y3+oZ7Ong76oBn2nEjb/gHFiBbQ0GXqgf
	 S9DPBX4zvz8dAWxgoKKfj9Gy8m2Qp9nWJ7yLQZVhnm8H8+rGHouUOguH6XOvEcylgs
	 JBmDi29ciX10zhqJxR5ma4VXdmdJHgCLlkr9S7wwRzd1RkgPSnOvEP8mYn1gI0aDgr
	 mSeA+SB3IrtcN2OyKtjR1VEEJUAHjnZEjuNl2oIWax6bpl15+IIMLGW1zmKgrk+DNY
	 d7DxYDp5q1CRA==
Received: from imac-27-2019.lan (c-71-204-6-23.hsd1.ga.comcast.net [71.204.6.23])
	by st43p00im-ztdg10073201.me.com (Postfix) with ESMTPSA id 03C2F221F60;
	Sat, 30 May 2020 04:01:59 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
From: Raylynn Knight <rayknight@me.com>
In-Reply-To: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
Date: Sat, 30 May 2020 00:01:58 -0400
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 Linus Walleij <linus.walleij@linaro.org>,
 openwrt-devel@lists.openwrt.org,
 Christian Lamparter <chunkeey@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <42114280-E5D1-4C7D-9AFF-09EA81CCAEB8@me.com>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
 <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
 <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>
 <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
To: Matthias Schiffer <mschiffer@universe-factory.net>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-05-30_01:2020-05-28,2020-05-30 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2002250000 definitions=main-2005300029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_210206_561305_3284168C 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.63.177 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rayknight[at]me.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.63.177 listed in wl.mailspike.net]



> On May 29, 2020, at 5:12 PM, Matthias Schiffer =
<mschiffer@universe-factory.net> wrote:
>=20
> Meanwhile I've found another target-specific config setting in the =
busybox
> package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx only.
>=20
> I assume "truncate" is tiny enough that it doesn't really justify =
making
> busybox non-shared, we could just build in truncate unconditionally. I
> don't know how contrained some of the "nas" targets are, but maybe we
> should just replace the busybox hack with a full-featured hdparm on =
these
> targets?
>=20
> Matthias

Two of NAS type targets that want hdparm are the kirkwood devices and =
oxnas devices.  Most of the kirkwood and oxnas devices have at least =
128MB NAND flash, those that don=E2=80=99t usually use the disk drive =
for storage.

Ray




--===============7161097778190531150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7161097778190531150==--
