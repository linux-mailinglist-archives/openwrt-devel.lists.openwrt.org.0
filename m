Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9341D32AC
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 16:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:MIME-Version:References:In-Reply-To:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EecUGhUuu8iPOsQDNXR3sokEI11L/O9T5yPS6QBJ35s=; b=CC1mr8uqy91hoxutjbk2BLwde
	hvLNQjBtxBWvFuCTP9Fyqa8xUO4BHo3erTjsqGSuTO9McQJI2YhokE8AQCOwBC3q7RzlMrlX/qx8U
	AQ/xKfgplBrGY/2pwQKZ2jNZzsiWHpnlH1CY5ITtSShsNxfxNvELQfA8lf+aRR3JrX9b64IvMwdmE
	HsoYiLcZtKONUSsFWSEZeztADMUceG7yTPoI6JEEphHWeNPrqJ9E97YKr1qsfVDupKtha7a9lI/0l
	uc5yFHVCSg6seLpWk24jAgR4Jsm/XVi9CnHSVx0+4jJ22pRYoUnV6FikkNGPfslpJhwcBJKT/0Ii6
	SIrHT8P3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZElo-0007rU-IU; Thu, 14 May 2020 14:23:32 +0000
Received: from tuna.sandelman.ca ([209.87.249.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEle-0007pz-WF
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 14:23:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by tuna.sandelman.ca (Postfix) with ESMTP id BEE56389D6;
 Thu, 14 May 2020 10:21:11 -0400 (EDT)
Received: from tuna.sandelman.ca ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id ydkAUG6soE59; Thu, 14 May 2020 10:21:07 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id 5755A389D5;
 Thu, 14 May 2020 10:21:07 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 2ACD9516;
 Thu, 14 May 2020 10:23:13 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>,
 Michael Jones <mike@meshplusplus.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <EF289B10-A44B-40B9-B071-3E875AC77B41@redfish-solutions.com>
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <EF289B10-A44B-40B9-B071-3E875AC77B41@redfish-solutions.com>
X-Mailer: MH-E 8.6+git; nmh 1.7+dev; GNU Emacs 26.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Thu, 14 May 2020 10:23:13 -0400
Message-ID: <5469.1589466193@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_072323_114433_C4584983 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [209.87.249.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Content-Type: multipart/mixed; boundary="===============1684495611788165052=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1684495611788165052==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Philip Prindeville <philipp_subx@redfish-solutions.com> wrote:
    >> A reboot with some logging on disk would allow for remote sysupgrades
    >> to have some kind of recoverability.

    > What if the failure left the box in a partially compromised state?
    > Would you want your firewall to =E2=80=9Cfail open=E2=80=9D?  I would=
n=E2=80=99t.

It depends a lot on the relative cost of sending a service person there to
repair the device (push the button, reflash or replace the device), vs the
risk of the box not operating at all.

In the NAT44 home router situation, the lack of an iptables to do MASQ or
port forwarding results in the "firewall" failing closed.
No packets traverse, but the box might be accessible by network for repairs
from one side or the other.

In the IPv6 and routed IPv4 situation, if packet forwarding is enabled, then
the box might continue to provide critical functionality, and it might be
possible to repair it remotely.

In the case where this isn't a router, but a NAS, or some other IoT device,
then the lack of a firewall, if the device has multiple layers of security
(no stupid default passwords, or no passwords at all) result in a lowered
level of security, but not zero security.

In general, I think that this decision needs to up-leveled to as a build
option.  There are many cases where I would agree: you want the box to die
rather than potentially come up insecurely.

=2D-
]               Never tell me the odds!                 | ipv6 mesh network=
s [
]   Michael Richardson, Sandelman Software Works        |    IoT architect =
  [
]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails  =
  [



--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEbsyLEzg/qUTA43uogItw+93Q3WUFAl69VFAACgkQgItw+93Q
3WV9xggAjS99gYde44s/5kZQtdFkqktt1UWrNDGGXjlYZn5KAT4cP3tcHvOSa0bt
TARu34J4Twmcd2cjO7bKwqbd2y5/9ALfLz6BNyXFI6sLskEH2XQN7zdehvI0yL5o
XwycDpc+L/aSyuC6cw3WbJSWKWeA2qTzHBl6DaG3BtLFRintDLgOOqSc3hngGzbz
lEZdIXMPynneysFYmJuRdlnTNhvuFLevZJIBKtxJlCOHBSDx2LeHGePaVtonwEdI
m+6QmZjUjB+QpQzt3VxZ0p3uHvC889AN0h/ZsvGAqZD8JFUsSf42uJm34AlEbC9X
xro3A8U2yZtROa4NGPibIP1X2Fy6sQ==
=+amM
-----END PGP SIGNATURE-----
--=-=-=--


--===============1684495611788165052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1684495611788165052==--

