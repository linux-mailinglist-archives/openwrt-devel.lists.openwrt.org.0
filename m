Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A2312E340
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 08:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GDGBR54kqsG1WsfuxZC5p+SdFTo0ZkxEgm4mIqIfJ30=; b=BqT2AVn0eMJMz693zLKC9PwwY
	5LyewJqYWOzzcoMc12ET7u4bgN2f302mv1J81XUUWktSEGNTMRuI4uTToZRJcN/6caAtmy8jjLfuK
	E019yuRR/Em9JD4O9y1q6qhby/VapEqwWOfWJCVZErqolKXSFCjY0CCRhUD/xatpZnmSNni1mqe02
	WkGTn95NyhA08f4umpeS1qTWxnx5BTVbvlYHVR/UZHyG2zOIo+Wm/TToI+0ifx5VOC90ne5cpEAt0
	wDWNB6KLktJEOXwdN7kCwWk7j82i/RLLskc8bRVd7aWHv4UNCieEnPF4PSUrC8IJmoFQ1sYAZgcPb
	XB6SgFv+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imueh-0004iE-6n; Thu, 02 Jan 2020 07:12:27 +0000
In-Reply-To: <20200102071038.GT70184@meh.true.cz>
Date: Thu, 2 Jan 2020 08:12:14 +0100
References: <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <93DDE8E1-7766-41E2-B469-F147637128A6@me.com>
 <20200102071038.GT70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21709.1577949141.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============7295058759892286675=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7295058759892286675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7295058759892286675==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-hyfv06021401.me.com ([17.58.23.190])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imueZ-0004hq-Uf
	for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 07:12:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577949138; bh=mnc8euRyuDxid8yuYvCJjNjOt7S9zn+xIXkrnvFpgpo=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=ASA0ManIygOdaBQQPSPOIfFGAcuxyVzAEga0beFNs8znZBpNpj9JWww9ffuwe0nVm
	 BiMjKxoD4spLqoQLLYnzlIL2Q4WR4TP8U3spc9SAGxBeQ6c99cbOsJT+cvEz7O7jyL
	 g3UGLJ5dZcjO+up5hDGjzijVHnBeLkTbwHCRBqq6G4/ugzA6c2ANBeg1OHioUvcNo/
	 x+GM6E54A0rXmqRgFXqhb7Lmzan5KV93BXd80Z8aMUAhJXdQ/45qihnlDkWNqE1E0K
	 t4BTIm7Hzjs5IQ/0M+VMfwp+R35rRIfrlXfw2Y9snKTNmpF+yQiRz8qWY6WWRfWTD0
	 quyfd74Is+fDw==
Received: from mbp-2.lan (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-hyfv06021401.me.com (Postfix) with ESMTPSA id 83C159C06D2;
	Thu,  2 Jan 2020 07:12:17 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20200102071038.GT70184@meh.true.cz>
Date: Thu, 2 Jan 2020 08:12:14 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <1C9CB51F-5288-4577-9C5F-72F5EF65E3EA@me.com>
References: <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <93DDE8E1-7766-41E2-B469-F147637128A6@me.com>
 <20200102071038.GT70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-02_01:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001020066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_231219_996130_B8003B69 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.190 listed in list.dnswl.org]
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

OK, fair enough. In any case thanks for helping to fix this, I hope this =
will be pulled soon into the main repo.

Petr


> On 2 Jan 2020, at 08:10, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2020-01-02 08:01:54]:
>=20
>> or perhaps we can ship you a RPi4 and you can return it once you are =
done with it?
>=20
> Thanks for the offer, but I've already spent more time on this than =
planed and
> it's not me who want to know the answer :-)
>=20
> -- ynezz



--===============7295058759892286675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7295058759892286675==--
