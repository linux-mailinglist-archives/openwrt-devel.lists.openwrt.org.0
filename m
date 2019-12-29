Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD07912C278
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 13:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bW/inWGgS8lcQoafWwCaWYEXRrv6iZV1ngKcJu/jY/c=; b=QwD/+zMWPr6MBBNuFWJtlDwFH
	R1nnBhOjDkhnOk/PdVn+AzAI9Og1qjo1PNAlSFeDedPfGbGp++SE1uC2BqxCsPx/FQ9MXVoca4xxQ
	QksjCGlpqeFYva6lZwkAVAanhoeuwOGX1ixgZz1EAuowfqzJG4G/nelYJe62MGldrybE7gvWr+dan
	slI5MfzxNK4y7ZMjn8X9iopt2x4pIN398T85G2AAw9tIcIBnn87KJsc8IXdq2gBaKlzQf29qtICyU
	dWCS0Hpyk+bVsMV9F0ldxfwKeIdGOHwSSoktl84cN3fHvERP01c48ZvMsA8+Dzb5lec8hSLzF8Wg/
	biYhcDeXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilY9i-00015h-2Q; Sun, 29 Dec 2019 12:58:50 +0000
In-Reply-To: <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
Date: Sun, 29 Dec 2019 13:58:36 +0100
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
 <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
 <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.21112.1577624322.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hannu Nyman <hannu.nyman@iki.fi>
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
Content-Type: multipart/mixed; boundary="===============8380065249472891060=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8380065249472891060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8380065249472891060==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-zteg06011501.me.com ([17.58.23.182])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilY9Y-00015O-GN
	for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 12:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577624319; bh=dDaMyctrL1tbnAOGp3ravH5e6lxc3jBnEuc6oJU1hXs=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=VDZ2B+TzAblkYtBVOrgCyBBE/8Wd3blq4iLt5m2B8yfpVcvBSVmCUohsOk2l+NN6s
	 gjrjeR9psETzqDxY2049npBQfrFIWPHNCJ6n0iWl0QSrX1PewKXqWmN7JI/psKQiE2
	 SV0+KhjfksHTRWRO7SEnCjHReiaAvtnw1u7l801jBsgH7gSdVdFLWypMjKmQOdblDd
	 sADXRxEYbFTpSUFG6kYr3QnQ8uU/A83uVS3/8n/aYrQGntvKHgfscJQ+sRLfGoQAcb
	 x+KPi357gke9sS+fXtojr0o+Yuz5+GwX53QT0opHL1Q3OGhmdk8tTmKLqrScl8Y50+
	 o+0XyQaaBERyg==
Received: from [192.168.176.103] (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-zteg06011501.me.com (Postfix) with ESMTPSA id 0BF942A07C2;
	Sun, 29 Dec 2019 12:58:38 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Sysupgrade possibly broken in recent development snapshots:
 "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
Date: Sun, 29 Dec 2019 13:58:36 +0100
Cc: Hannu Nyman <hannu.nyman@iki.fi>
Content-Transfer-Encoding: quoted-printable
Message-Id: <1DB38131-2A37-40EB-B219-F8AD93665354@me.com>
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
 <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
 <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-29_03:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=800 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912290124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_045840_553454_170D4839 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.182 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Hannu was correct - the root cause are the libubox and ubus updates done =
recently. Taking the r11829-e3e939d8e6 as a baseline and rolling back =
ubus and libubox to versions before the 2019-12-26 does fix the issue. I =
have previously tried only to roll back the ubus but that did not work - =
but doing both does fix it.



> On 29 Dec 2019, at 13:13, Hannu Nyman <hannu.nyman@iki.fi> wrote:
>=20
> Petr Nov=C3=A1k kirjoitti 29.12.2019 klo 13.49:
>> I am normally building my own images, but to make sure this is easy =
to reproduce, I have recreated the problem with the most recent snapshot =
builds as well.
>>=20
>=20
> Can you be explicit with "most recent"?
> You mean r11829-e3e939d8e6 images that contain the last fix for =
libubox?
>=20
>=20
> Ps. Just as reference, so far I have not seen the sysupgrade problem =
myself. I have already successfully sysupgraded away from =
r11829-e3e939d8e6 to a 19.07 build both on R7800 and on WNDR3700v2
>=20
>=20



--===============8380065249472891060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8380065249472891060==--
