Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA0D12C26E
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 13:17:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZxP/GwVl1Cc2gLQJBIhMTUY88coyEk0W2Ek3+XFC7KA=; b=JUH6JdVFBhlCScW7k7JatRmIo
	7gpz+lz1Mb7HPt5MI13zc+VM2iuvox7hzmAjJEeAjNFE4dKwRDgrOS0B8Va7XaDQU5HZRBoukty8P
	x3TXp0X+KWmlIrkgJP7dXatyfiaJztvD6wmGKJnh+HiAnz8w3m8zr6CN87BuU5YZgfhQd/M7y+v61
	45t67uo5tVjuryorjekZCs+24grcInbrVIpbqzGBflSr/61nqvIueZZHor0atfcW15rr4ERGBjhak
	JSv77MqLG7vQLRjktvnSEpsK9x0JiNiAcWlVJYyHSW2LLzdCRb1c3zKClMVFe/ret//BCowUknr2L
	ZomhF3FKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilXVW-00044P-9o; Sun, 29 Dec 2019 12:17:18 +0000
In-Reply-To: <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
Date: Sun, 29 Dec 2019 13:17:06 +0100
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
 <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
 <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
To: Hannu Nyman <hannu.nyman@iki.fi>
MIME-Version: 1.0
Message-ID: <mailman.21105.1577621832.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
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
Content-Type: multipart/mixed; boundary="===============7797508978265785378=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7797508978265785378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7797508978265785378==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06021701.me.com ([17.58.23.196])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilXVO-00043t-Op
	for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 12:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577621829; bh=6SGUZk566qTvOPir+1ram/AGAQ3AGoK/8sL34AXrSAs=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=SYZJO68jAMFdW9ImdHH51AX00ehHgCnmi7LNGLFxsCWciKr74tzadXXrvffU9HX1i
	 JkKnoCj1/yMb51sdv9CTBaRSlbN6RC4dv3yYgvFFGgO6VgolLBRDxGl5EWGEVwrXOk
	 9n9IFVRZQD3sP+M9OU4kx80kDt3DoQVFO2e+p21Kw9vp9l2PFqlxHhg44oj87b5gTS
	 pjljgOO/CuICgIZKiojUVNrnxzmwtvnlprlJqXKdVguwEKsHo6CkLQOjWyufAbgg+t
	 6vpefCer3SfpN1EfOONUJC2kr/+7px3nQ+cc6Rd/IqKcUD7kXk/m/b2Y0mNRgRJRJ7
	 xKaOGcTXIhkEg==
Received: from [192.168.176.103] (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-ztdg06021701.me.com (Postfix) with ESMTPSA id 29F30A0081B;
	Sun, 29 Dec 2019 12:17:08 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Sysupgrade possibly broken in recent development snapshots:
 "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
Date: Sun, 29 Dec 2019 13:17:06 +0100
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <BE932485-9E3B-4F56-97CB-C9A893F34D5F@me.com>
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
 <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
 <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-29_03:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=995 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912290118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_041710_819665_DA7D07F2 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.196 listed in list.dnswl.org]
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

Yes, correct, I did a pull from git this morning and I have built an =
image and the problem seems to persist there - the logread issue IS =
fixed.

>=20
> Ps. Just as reference, so far I have not seen the sysupgrade problem =
myself. I have already successfully sysupgraded away from =
r11829-e3e939d8e6 to a 19.07 build both on R7800 and on WNDR3700v

This may be something specific to rpi4 or the way the upgrade is done on =
that platform.

I am now trying to make a build based on the e3e=E2=80=A6 but with =
rolling back ubus to the version before the 26th of December. Looking at =
the sysupgrade code, the ubus seems like a most likely root cause, but I =
want to make sure this is the case.

Update in 10 mins once the build is finished and image loaded to card=E2=80=
=A6



--===============7797508978265785378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7797508978265785378==--
