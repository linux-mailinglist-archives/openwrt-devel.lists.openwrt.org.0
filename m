Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAD41508E8
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 15:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZCXagRA7ltocQDAMrKDbPAAykuGHzyYOmTghmf0GyGY=; b=HUI5Q3QaaaTDef5fwYL5mfDMA
	iSzdML1kQESde6MHFBKxxi0+i0LkYHfJCSSOnt1t8YfPwxOe/R5rrHPfcJR3mHfD+gTyj+N/T63K/
	zBny6bwi+82+OAxVf8CKF0kdPK2GNWUEx9xCBEPYn/aqpYDRPMVmEHqHcDkk7ChqzUqunLOcaAK3z
	XrTgoTab20TEBux40tJl7b8iFOkqdaS+TAIbyUoomS9DX+n9++mcdRPkbT60v/UsxLHU8EVG7hXwK
	1knK9J+cvuc/Kw+ya69Kn59WFVh9bYJXPVHO5CEwoUs1ezfnIDm9srOtN74cRHJ3LkdL8sN/DMNKT
	1X04jcxFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydCB-0004v1-JR; Mon, 03 Feb 2020 14:59:27 +0000
Date: Mon, 03 Feb 2020 15:59:03 +0100
To: =?UTF-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
References: <mailman.28108.1580636942.2486.openwrt-devel@lists.openwrt.org>
 <87pnew2git.fsf@miraculix.mork.no>
In-Reply-To: <87pnew2git.fsf@miraculix.mork.no>
MIME-Version: 1.0
Message-ID: <mailman.28332.1580741959.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: JORDI PALET MARTINEZ via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: JORDI PALET MARTINEZ <jordi.palet@consulintel.es>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] support of IETF v6ops draft
 draft-ietf-v6ops-464xlat-optimization
Content-Type: multipart/mixed; boundary="===============6322349103754879982=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6322349103754879982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6322349103754879982==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.consulintel.es ([2001:470:1f09:495::5])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydBy-0004r9-3l
	for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 14:59:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=consulintel.es;
	s=MDaemon; t=1580741946; x=1581346746;
	i=jordi.palet@consulintel.es; q=dns/txt; h=User-Agent:Date:
	Subject:From:To:CC:Message-ID:Thread-Topic:References:
	In-Reply-To:Mime-version:Content-type:Content-transfer-encoding;
	bh=+LrS4iBZ2jyflI6h5Xxs5VxL6ofv2X4dNeJXJZ3rBXE=; b=NP7kwIR329y0Y
	jtr5JFDtH7XKv1Go1OCXQcNbV59Y+gEHL0a6BImqTqDZVbhTWWPuq+JhSxIQwzaE
	sm85befoTvs23Ekv2U6jmfhG3/DhyLrl4gXrs9Av8iJ4gOZwSHrG31jAomXYA8fz
	ZIziHjTha9QurlQvMODSCc18W/RmL8=
X-MDAV-Result: clean
X-MDAV-Processed: mail.consulintel.es, Mon, 03 Feb 2020 15:59:06 +0100
X-Spam-Processed: mail.consulintel.es, Mon, 03 Feb 2020 15:59:05 +0100
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on DNS1.novagnet.com
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=14.0 tests=BAYES_00,URIBL_BLOCKED
	shortcircuit=no autolearn=no autolearn_force=no version=3.4.1
Received: from [10.10.10.144] by mail.consulintel.es (MDaemon PRO v16.5.2) 
	with ESMTPA id md50000048285.msg for <openwrt-devel@lists.openwrt.org>;
	Mon, 03 Feb 2020 15:59:04 +0100
X-MDRemoteIP: 2001:470:1f09:495:a432:9579:266e:8687
X-MDHelo: [10.10.10.144]
X-MDArrival-Date: Mon, 03 Feb 2020 15:59:04 +0100
X-Authenticated-Sender: jordi.palet@consulintel.es
X-Return-Path: prvs=1302d244b6=jordi.palet@consulintel.es
X-Envelope-From: jordi.palet@consulintel.es
X-MDaemon-Deliver-To: openwrt-devel@lists.openwrt.org
User-Agent: Microsoft-MacOutlook/10.21.0.200113
Date: Mon, 03 Feb 2020 15:59:03 +0100
Subject: Re: [OpenWrt-Devel] support of IETF v6ops draft
 draft-ietf-v6ops-464xlat-optimization
From: JORDI PALET MARTINEZ <jordi.palet@consulintel.es>
To: =?UTF-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
CC: <openwrt-devel@lists.openwrt.org>
Message-ID: <209245BB-FEAD-4EA4-9AA6-CEDEF2303917@consulintel.es>
Thread-Topic: [OpenWrt-Devel] support of IETF v6ops draft
 draft-ietf-v6ops-464xlat-optimization
References: <mailman.28108.1580636942.2486.openwrt-devel@lists.openwrt.org>
 <87pnew2git.fsf@miraculix.mork.no>
In-Reply-To: <87pnew2git.fsf@miraculix.mork.no>
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_065914_677785_ACC47B54 
X-CRM114-Status: GOOD (  13.97  )
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

Hi Bj=C3=B8rn,

Thanks a lot for reading the document!

Responding below, in-line as ->.
=20
=20

=EF=BB=BFEl 3/2/20 15:28, "Bj=C3=B8rn Mork" <bjorn@mork.no> escribi=C3=B3:

    JORDI PALET MARTINEZ via openwrt-devel <openwrt-devel@lists.openwrt.org=
>
    writes:
   =20
    > We are working in a possible optimization to 464XLAT, in order to
    > support old IPv4-only devices such as SmartTVs, STBs, etc., with
    > 464XLAT, avoiding double translation (CLAT and PLAT) when the content=
s
    > are already dual-stacked in the CDN/caches.
    >
    > The document has recently been accepted as v6ops WG item:
    >
    > https://datatracker.ietf.org/doc/draft-ietf-v6ops-464xlat-optimizatio=
n/?include_text=3D1
    >
    > I suggest, in addition to read the intro, possible optimization and
    > problem statement (sections 1, 3, 4), to concentrate in the section
    > 5.2, as it seems the best approach, as it doesn't need any change in
    > the operators neither CDNs/caches, infrastructures. Only requires an
    > internal CPE "coordination" between the CLAT/NAT and the DNS proxy.
   =20
   =20
    Hello Jordi!
   =20
    This does look like an interesting approach.  But I do worry about the
    lack of "Security Considerations"...

-> Remember that this is an ID, we had 5 previous versions as "individual" =
document, and now 1 more as WG item. So, it will clearly evolve, and I thin=
k it makes sense to work on the security considerations once we have a clea=
rer view about the best approach, just to avoid wasting time in a security =
section that may be referring to text that is changed across the draft deve=
lopment.
   =20
    IIUC, you are adding IPv4 <=3D> IPv6 protocol translation rules dynamic=
ally
    based on forward DNS names having both A and AAAA records.  This sounds
    very risky to me. There is no way to validate the association between
    the A and AAAA records.  All you need to do to redirect traffic destine=
d
    for 192.0.2.42 to your evil MITM server at 2001:db8::42 is to create a
    FQDN with both addresses and provoke a client to look up that name.  Yo=
u
    have now added a rule mapping 192.0.2.42 to 2001:db8::42.


-> I see your point, but if you have a MITM server, then even if the transl=
ation rules aren't being created as described by this document, it means th=
at the MITM server is still able to redirect your IPv4 or IPv6 traffic. So,=
 from that perspective, unless I'm missing something else, the translation =
rule doesn't "increase" the security issues, right?

-> For example, if your CPE has been intruded, and is using an alternative =
DNS server, "all" your traffic is already being redirected.


   =20
    Dynamic mappings seems impossible to me without some way to validate
    that two address records belong to the same entity.  This is hard
    ("impossible").
   =20

-> We could improve it using DNSSEC. This will mean that the dynamic rules =
only work if we have DNSSEC. This will be fine for me, except because I bel=
ieve most of the CDNs/cache, which is what we try to optimize (as this is t=
he major % of the non-optimized traffic), aren't very happy using DNSSEC. I=
 need to re-check if that's still true with some of the CDN guys that I kno=
w ... by chance I just read an article on that a couple of days ago:

https://blog.apnic.net/2020/01/31/why-dynamic-dns-mapping-prevents-dnssec-d=
eployment/


-> Anyone has additional ideas for verifying that both addresses belong to =
the same "owner"? Actually, is not that the same problem for dual-stack? I =
think if you have a MITM, anything can be done with your traffic ... but ag=
ain, I may be missing something!
   =20
   =20
    Bj=C3=B8rn
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





--===============6322349103754879982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6322349103754879982==--
