Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D94AB2FA0
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 12:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:To:In-Reply-To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aytiLoJCE44O+lVSEaFxPkpoWzCpDN21tcVig1GZGN0=; b=tXAgVNxoOyKme/YrEdy9aJ4dA
	2iJvxO8EbJUnReU6bz7RFEjrEfNMFTyV4KKrbixA7g9u+Hs8yzgpNRbZRwftyqVL3QVsZAR2DScdh
	dQzYO/+lXhpjDV/OUjU/QWrw/HhK4oRm5QDcy0dqyXD4QTxmtKcb10Y5tAfLTuoGZx2vAE3lVRo4C
	i9FFd9zoUwGNcQ9YyPqDHsB5ZobnSEwrGWKDnDi6m4rWjYvCor14NWdMgDBPbEiNA9qRDqM/bOnud
	u0MDWr73R+qrSIy0D1PAEP+FFf+K0l9wt+31nYS1mXMnPD77uLz7nDbotXrnGnR0BZLO16hsrVR26
	C34Xom9gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9SE5-0007iP-9u; Sun, 15 Sep 2019 10:57:53 +0000
Date: Sun, 15 Sep 2019 12:57:33 +0200
In-Reply-To: <openwrt/openwrt/pull/2411/c531510195@github.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <openwrt/openwrt/pull/2411@github.com>
 <openwrt/openwrt/pull/2411/c531510195@github.com>
MIME-Version: 1.0
Message-ID: <mailman.24856.1568545067.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Ivan_H=C3=B6rler_via_openwrt-devel?=
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
Reply-To: =?utf-8?Q?Ivan_H=C3=B6rler?= <i.hoerler@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
Content-Type: multipart/mixed; boundary="===============4065665850154824227=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4065665850154824227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4065665850154824227==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-zteg06011501.me.com ([17.58.23.182])
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9SDu-0007he-Vv
	for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 10:57:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1568545057; bh=8L7KyCmlRWVuBlWPi/lepAP1pJMtl4YKvGyI9qczwZY=;
	h=From:Message-Id:Content-Type:Subject:Date:To;
	b=RwLhQS9madeVIT5vIFR9djIYRAeaOrerlI6u7Mfe5dGlnfA7sWAozA4BspBqT/QPj
	 muYaSa8afTdTS7bxgKd/JQpP5NcUW3j6svvDiixrQL9SNkX0kR1j1ZY0aq/VXozkXf
	 Oy6lKQ9gPyNI7VtG36cJvJJsb3mdp8EK4yLQrU7JpKVoB4KhUVsTRtTrtgYy7Ou5xL
	 +AVNUrk7WY6aimp7vNyDYvB4QcoyGkCljWn4GUUqfdE/v/mwd7kA0mNZYVhZCAJGmH
	 J1dJeSjFmAkIAkXISkNr6B6fUj/+gUJNfKbxLB+sioXIzSI6fbBkC9L7eXlUmCKqJ2
	 lDFJ+NQ+YzDcg==
Received: from aarau.fritz.box (unknown [81.221.232.148])
	by mr85p00im-zteg06011501.me.com (Postfix) with ESMTPSA id 91C932A0833;
	Sun, 15 Sep 2019 10:57:35 +0000 (UTC)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <i.hoerler@me.com>
Message-Id: <A3F757F3-DDFE-4273-B380-8048EB79EC1B@me.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_282E45E5-C872-473A-8331-B0CF87DA21E9"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
Date: Sun, 15 Sep 2019 12:57:33 +0200
In-Reply-To: <openwrt/openwrt/pull/2411/c531510195@github.com>
Cc: openwrt-devel@lists.openwrt.org
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <openwrt/openwrt/pull/2411@github.com>
 <openwrt/openwrt/pull/2411/c531510195@github.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-09-15_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1812120000 definitions=main-1909150121
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_035743_051073_4B815E7F 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (i.hoerler[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [17.58.23.182 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
                             words
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain


--Apple-Mail=_282E45E5-C872-473A-8331-B0CF87DA21E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Adrian
So i did: https://github.com/openwrt/openwrt/pull/2411
Thanks for the help!
Ivan

> Am 14.09.2019 um 22:18 schrieb Adrian Schmutzler =
<notifications@github.com>:
>=20
> Hi, thanks for implementing my suggestions. However, please do not =
open a new PR when doing changes, but rebase your commits in the =
existing branch in the future, so discussion etc. is kept.
>=20
> For this PR, I would like you to address the following minor issues:
>=20
> You are changing only Linkit Smart 7688, but your commit title does =
not express that. Maybe choose something more specific like
> "ramips: add SD-Card support to Linkit Smart 7688"
> In the commit description, please remove the reference to 18.06. Your =
commit will be applied to master, and then might be backported to older =
stable branches, so the reference to 18.06 is wrong in this case. Just =
state that the SD-Card reader is not working ATM.
> =E2=80=94
> You are receiving this because you authored the thread.
> Reply to this email directly, view it on GitHub =
<https://github.com/openwrt/openwrt/pull/2411?email_source=3Dnotifications=
&email_token=3DABOOK6AQOMK3SJDOVHP3RYLQJVBIBA5CNFSM4IWXLNB2YY3PNVWWK3TUL52=
HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWSZGOD6XDHMY#issuecomment-53151019=
5>, or mute the thread =
<https://github.com/notifications/unsubscribe-auth/ABOOK6G5BUMN6F2ZTLJ2OPL=
QJVBIBANCNFSM4IWXLNBQ>.
>=20


--Apple-Mail=_282E45E5-C872-473A-8331-B0CF87DA21E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Adrian<div class=3D"">So i did:&nbsp;<a =
href=3D"https://github.com/openwrt/openwrt/pull/2411" =
class=3D"">https://github.com/openwrt/openwrt/pull/2411</a></div><div =
class=3D"">Thanks for the help!</div><div class=3D"">Ivan<br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Am 14.09.2019 um 22:18 schrieb Adrian Schmutzler &lt;<a =
href=3D"mailto:notifications@github.com" =
class=3D"">notifications@github.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><p class=3D"">Hi, =
thanks for implementing my suggestions. However, please do not open a =
new PR when doing changes, but rebase your commits in the existing =
branch in the future, so discussion etc. is kept.</p><p class=3D"">For =
this PR, I would like you to address the following minor issues:</p>
<ul class=3D"">
<li class=3D"">You are changing only Linkit Smart 7688, but your commit =
title does not express that. Maybe choose something more specific =
like<br class=3D"">
"ramips: add SD-Card support to Linkit Smart 7688"</li>
<li class=3D"">In the commit description, please remove the reference to =
18.06. Your commit will be applied to master, and then might be =
backported to older stable branches, so the reference to 18.06 is wrong =
in this case. Just state that the SD-Card reader is not working =
ATM.</li>
</ul><p =
style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;" =
class=3D"">=E2=80=94<br class=3D"">You are receiving this because you =
authored the thread.<br class=3D"">Reply to this email directly, <a =
href=3D"https://github.com/openwrt/openwrt/pull/2411?email_source=3Dnotifi=
cations&amp;email_token=3DABOOK6AQOMK3SJDOVHP3RYLQJVBIBA5CNFSM4IWXLNB2YY3P=
NVWWK3TUL52HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWSZGOD6XDHMY#issuecomme=
nt-531510195" class=3D"">view it on GitHub</a>, or <a =
href=3D"https://github.com/notifications/unsubscribe-auth/ABOOK6G5BUMN6F2Z=
TLJ2OPLQJVBIBANCNFSM4IWXLNBQ" class=3D"">mute the thread</a>.<img =
src=3D"https://github.com/notifications/beacon/ABOOK6ESZUWLQHUT5TZJGEDQJVB=
IBA5CNFSM4IWXLNB2YY3PNVWWK3TUL52HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWS=
ZGOD6XDHMY.gif" height=3D"1" width=3D"1" alt=3D"" class=3D""></p>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_282E45E5-C872-473A-8331-B0CF87DA21E9--


--===============4065665850154824227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4065665850154824227==--

