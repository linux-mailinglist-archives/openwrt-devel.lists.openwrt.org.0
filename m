Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A3A12D419
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 20:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hAOFLy6FXaB7F+PW20oKVQB/jf/UrSUmfyiBmDutcmE=; b=iLCuMuqZei8MJnN5Fpbzs4Vg3
	KX2Lxh5ZH9HQJ/fGtw6ePezkyfF8ZZ/qNU3KJzGwlKu6ce0EKucDe8xJmBzNopNXy58JXcw9VdvDE
	cUBPlm1ABQly40IfrkOEpfyU0mijwi83WJOSIqX1TNT02bNZo56siImQiYX+kXQIv0hdFkuVSxTO2
	1vEBBv0bgWyvaAoqBVdAKE+/rkK3FAVBYVdyP/H+hz0CBmjBksaYr8bY7gbi2p4iUTEibUddXXqcb
	vi4tEVATBn9rRVzPxCWxfX4rwnlLqPfvxWO1iBARq5wqJamxbv+TAnBGxLBx1xepEHpiqFDKC/xFf
	ncWiTozZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0xK-0002WI-2g; Mon, 30 Dec 2019 19:43:58 +0000
In-Reply-To: <20191230190746.GI70184@meh.true.cz>
Date: Mon, 30 Dec 2019 20:43:36 +0100
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21390.1577735029.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============3023402254213717658=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3023402254213717658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3023402254213717658==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-hyfv06011301.me.com ([17.58.23.184])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0x9-0002Vs-3I
	for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 19:43:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577735020; bh=bGhAfY1sTVUIvUxtSN5Fsgi8r8Kfo19M+qmkYJ9pqRw=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=emyKAMrTrlu6WgCUiW9n7yWxCVUgLaCK27rXEAmBrUqxfujffWH6dATTLLlby7klP
	 Gr1Nafh+sDEm3tZz3CnRibWl+AOVAwnQ/xGt0/Ig8T4G2qy0GMVEukaTZ/fPsmXBHz
	 oHS3ohgTjDtbSzlnaUvk39WZ8La8Wc5IPmSNpFPNLRy7eHiNr/E0yL4yNdJESJZ4Ix
	 VpeuZmIV4Hua4ONYvz4yGcQcv+5u5fgJxXIEb4vSE46SxlaYFjTNGW55xKZcxMuzwD
	 JXYMPymTfXL2ZimdFIR1qGerTfaYmm9I6KSdPqp2j2nolWUV+AlJMvCC4+m9Kt08F7
	 5KvtPPvAsR9KQ==
Received: from [192.168.176.103] (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-hyfv06011301.me.com (Postfix) with ESMTPSA id 9EF18580781;
	Mon, 30 Dec 2019 19:43:38 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20191230190746.GI70184@meh.true.cz>
Date: Mon, 30 Dec 2019 20:43:36 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-30_06:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912300177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_114347_151915_87E917F3 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.184 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi Petr,

thanks a lot for the effort. I will do my best to reproduce the issue =
giving more details, I will post any more details here tomorrow.

PN

> On 30 Dec 2019, at 20:07, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr =C5=A0tetiar <ynezz@true.cz> [2019-12-29 23:21:23]:
>=20
>> So perhaps this is something Cortex-A72 related?
>=20
> I've just tried it under QEMU 4.2.50 with:
>=20
> * machine: virt
> * cpu:     cortex-a72
> * rootfs:  =
http://downloads.openwrt.org/snapshots/targets/armvirt/64/openwrt-armvirt-=
64-rootfs-squashfs.img.gz
>            (OpenWrt SNAPSHOT, r11829-e3e939d8e6)
>=20
> and the result is same as on x86/64, I'm unable to reproduce the =
issue:
>=20
> root@OpenWrt:/# sysupgrade =
http://downloads.openwrt.org/snapshots/targets/brcm2708/bcm2711/openwrt-br=
cm2708-bcm2711-rpi-4-squashfs-sysupgrade.img.gz
> Downloading =
'http://downloads.openwrt.org/snapshots/targets/brcm2708/bcm2711/openwrt-b=
rcm2708-bcm2711-rpi-4-squashfs-sysupgrade.img.gz'
> Connecting to 176.9.48.73:80
> Writing to '/tmp/sysupgrade.img'
> /tmp/sysupgrade.img  100% |*******************************| 12067k  =
0:00:00 ETA
> Download completed (12357050 bytes)
> Device linux,dummy-virt not supported by this image
> Supported devices: raspberrypi,4-model-b
> Image check failed.
>=20
> root@OpenWrt:/# echo raspberrypi,4-model-b > /tmp/sysinfo/board_name
>=20
> root@OpenWrt:/# sysupgrade /tmp/sysupgrade.img=20
> Saving config files...
> Commencing upgrade. Closing all shell sessions.
> killall: telnetd: no process killed
> Sending TERM to remaining processes ... dnsmasq netifd odhcpd ntpd =
ubusd urngd logd=20
> Sending KILL to remaining processes ...=20
> Switching to ramdisk...
> ...snip...
>=20
> So I'm wondering what is going on there.
>=20
> -- ynezz



--===============3023402254213717658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3023402254213717658==--
