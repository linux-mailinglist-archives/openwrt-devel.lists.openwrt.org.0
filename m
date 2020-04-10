Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6FC1A44FA
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 12:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m6WN3sctwcLUcYsahASmUtxsmeuzC8yCXfg56PsZAsk=; b=nOmB0MEAmYb/0jg8DZZGu2QlH
	M/sGAhQLkJzUQO/iHV2OjZ4PeB8wsTDsoqdb2DYn/YjwpVWAXKvW2yoxrBAsEpWN0xu/tI28k9o6o
	BWmTFJnxLXw+aeWGt6Z/E688AO+j+n6giYGOrB3U1Gn2VoL+ZM7Jf1f8HX/UeVIA5IVs5oDuK2D56
	WQFvf92ey0ejnjY3CUy8RC15183h6kVA3GAtjmeay0fTLaHOX/LBnp/VQzpn155ViXYMCSj1TzApb
	eYfOwQ8vyCnGTDimF6YYcugg8UXoPE+wZVIlWMZRZc2/UdYdbmK06gzo2HMPOyBy9QwyJwpLt7POy
	avrsEBUMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqY9-0003yA-QA; Fri, 10 Apr 2020 10:06:13 +0000
References: <f2b0d5ae-ddfb-e9d5-897c-8ff4dbfb2d8c@aboehler.at>
In-Reply-To: <f2b0d5ae-ddfb-e9d5-897c-8ff4dbfb2d8c@aboehler.at>
Date: Fri, 10 Apr 2020 12:05:50 +0200
To: =?UTF-8?Q?Andreas_B=C3=B6hler?= <dev@aboehler.at>
MIME-Version: 1.0
Message-ID: <mailman.2464.1586513168.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [RFC][lantiq] Custom PHY and ethernet/switch
 driver
Content-Type: multipart/mixed; boundary="===============0039718015915965764=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0039718015915965764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0039718015915965764==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqY2-0003xW-3E
	for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 10:06:07 +0000
Received: by mail-ed1-x52f.google.com with SMTP id p6so1819201edu.10
        for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 03:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QVc09CCZwf/+AYovOkuXS0Fumzki5qJa5B7LCbekfIE=;
        b=pzNn2CNCI1B0j+4ycPH+woMadP0uhZaQRC1V6I97r2+9DDMxZ5urkpTh8OXLnyIc91
         Ny9TxLlXA5uxAWedW8WqfbsMyLu0X8Pk8yyFrvQc/cYgPal2YZ2EQ0292ZLABfu3aVND
         tFDPqhSO8rFBUCJVuAdLOYiDC+4ciiIvlxA33cUICh9j/tzY1tMnuCdtbDWb6vVGv6IM
         Zcn5qhj1QUD2GFg5huPQtvRDbgIenhjxmIXVXVOupKQOCac2wCMJEJ2qB7y+/xTWwNxz
         UOpPs19m/puI76EIGQjL/YsBCge/9A1PAkCvt1G6Y6WG0yAJVtj8M21lHxHNuF77qo3P
         QYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QVc09CCZwf/+AYovOkuXS0Fumzki5qJa5B7LCbekfIE=;
        b=DpVjIl2jtpy2T/607gLykyKgQvIru55XCDvuzAxdgpwRzGnkuPbdv0c4FbZfPbifCY
         SjEbB77TdAKYPythF2MGCuVzkown4v+cQHlpig/nEwDXodMDGuvHGkOsw8UcOOqC3xMq
         l0VxVMoqeXGDIZVVhggQulomuvfnhQyRQObVjhn9pP+97M7JPdW3JKyN3goM5FCFhUKB
         Ki1GAOOLQtHn75iIzeGg2NbhvrjKUTD74e4v7SiYCpB9L/ISyeEBm9GKLRg5xIgrBn/j
         uk5I1kwwdgH0aBcGzZUa65ydyBhzyw3csoL2IeX8rASd728LWaHa8vbFnW39ljIZFFtH
         CgqQ==
X-Gm-Message-State: AGi0Pua1dOWxYkVrhYiza5SnKS3cHqt0qeeZOgS/hVxIz3IJtFT29H5c
	+aUZDJX1JS4/U3RP4gVpJIsPT+aLjWuV9sN81pgJOYRaZ+o=
X-Google-Smtp-Source: APiQypISrcxie4xrK4Isu++DKfxz7Hr4aiD+Jtqmb3DG3vzn5e9Rrn7pmBpq6O2dJHf9U2wlBcFaNqKJD0JuyrYf8aM=
X-Received: by 2002:a50:fe05:: with SMTP id f5mr1587713edt.338.1586513161248;
 Fri, 10 Apr 2020 03:06:01 -0700 (PDT)
MIME-Version: 1.0
References: <f2b0d5ae-ddfb-e9d5-897c-8ff4dbfb2d8c@aboehler.at>
In-Reply-To: <f2b0d5ae-ddfb-e9d5-897c-8ff4dbfb2d8c@aboehler.at>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 10 Apr 2020 12:05:50 +0200
Message-ID: <CAFBinCDN8zDr5_0qdmp_6-0yuv2XexppEz0AsMySfULw2c+iqw@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [RFC][lantiq] Custom PHY and ethernet/switch driver
To: =?UTF-8?Q?Andreas_B=C3=B6hler?= <dev@aboehler.at>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_030606_141117_A494F8CB 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:52f listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Hi Andreas,

On Sat, Mar 28, 2020 at 11:27 AM Andreas B=C3=B6hler <dev@aboehler.at> wrot=
e:
[...]
> What is the current state in switching to the upstream DSA switch driver?
> Can both drivers be handled, i.e. DSA for newly added devices and the
> legacy driver for older devices?
> Which driver should I target first, the legacy xrx200 or the DSA driver?
personally I would like to switch to the upstream DSA driver as soon
as possible.
this reduced the maintenance overhead when updating kernel versions

there's also some people (see recent mails) working on ARX300 support.
I fear that they may need to change the Ethernet driver and having an
out-of-tree driver just means that the work has to be done twice.

on IRC I asked about the DSA migration as well (that was some weeks ago).
here's the relevant conversation:
<xdarklight> Hauke: how about switching to the DSA driver for 5.4? I
don't want to mess with the GPHY loader and the out-of-tree Ethernet
driver
<Hauke> xdarklight: I would like to swithc to the DSA driver
<Hauke> but we probably need some migration path
<xdarklight> Hauke: maybe we can share a TODO-list somewhere so we can
write down everything that comes to our mind and then work on it
one-by-one
<jow> Hauke: I think it makes sense to switch to dsa without migration
<pkgadd> the wish for migration scripts exists for at least two years
(on mvebu and ipq806x) - and it's a good idea in principle, but
/etc/config/network is complex - and may be very complex at times (and
lantiq with the VLAN tagging necessary for multiple xDSL ISPs is not
an exception to that rule), so making migration support a requirement
probably ends up in a self-fullfilling prophecy to never switch to
<pkgadd> DSA (just because writing these scripts in a way that makes
them remotely safe to use is somewhere between very hard and close to
impossible)
<KanjiMonster> we do need to some enhance the existing for defining
vlan membership, pvids etc with vlan_aware bridges
<jow> yes
<jow> and this time we should define how the config should look like,
then implement it
<jow> to avoid inconsistencies and poor config layout like with
swconfig in the past
<mangix> Hauke: I suggest switching to DSA without migration as well.
The biggest problem is the one CPU port issue. Needs a patch.

so to me it seems that the swconfig to DSA migration is needed by
Lantiq and multiple other targets as well (mvebu and ipq806x are
listed above, but I think also ath79 is affected due to some qca8k
switches for which OpenWrt is using an out-of-tree driver)
unfortunately I have zero experience in that area and no insight into
the requirements needed for this migration (for me personally
resetting the network config to defaults when upgrading to a DSA based
OpenWrt version would work perfectly fine)


Martin


--===============0039718015915965764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0039718015915965764==--
