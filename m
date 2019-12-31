Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F7312D7C6
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 11:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Woc80VsVtEvOvs7iX1jNctXM48u9DIDepR89OvWsbs=; b=C52r6A9qcWxvN2Dl+Yhq/iWlM
	faxTxdk2Y5DVKq3VkPFMjNZJWl/snYRId34WVIHUOPpyPOYooXso4SE0fQAzalHUaaAG6Vd6N0ajt
	WzdCmcd0RyRU68g2mYOlUkfitY89PJxxBGFJmuLcWG9TT+0aCyrEhOcbB2wZ1XGXtj1BCGHWS/uH6
	i2Rl0JleQrM7kEs0RUcRLskfVM+6z1Vjz0kuPvC38CSUxDgEcGhK2LzXj5sniIuN/oxBOnqmvT9ou
	/fGzP+goTuZqLw8c6EdVYFC43NWS6oybA5yDcW4AMCTiCIdb69PX2QKaiGdBfbyF/ihIkjDaGNDtx
	QBwlyCzGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imENL-0003BN-B2; Tue, 31 Dec 2019 10:03:43 +0000
In-Reply-To: <20191231095801.GK70184@meh.true.cz>
Date: Tue, 31 Dec 2019 11:03:23 +0100
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21522.1577786613.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============6865308282005953427=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6865308282005953427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6865308282005953427==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06021701.me.com ([17.58.23.196])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEN7-0003Ax-03
	for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 10:03:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577786607; bh=MtltLYm1QzyirQ7qC4JPMS5obVLQwRvIB6+uyKvdeI0=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=KM8lN1kAU7oJj1f1c3UGT9k4NGeQqvYXlf15tAY068PspskWJmEAQ58IjYuZGy58u
	 6Jvs4seXfx1TZ9K0PVNy4HRU+gqyQsUlHbg08L5hARntDPxWRrr+5M8HBdUXnx4skk
	 HXx3SsLIkvjaz+qOOoCnd9/ERuv/e3tBfo97/CTW29eC2zPTDk3Q87zbwDFXfx3oC4
	 aKukG01n9vhno8kHWMdRCMBWPbC2kTrTn9RigWwHKDsdSXgcn4Vrokf7bSXbqrhKx+
	 xgdjYG7cA3UtUcs0cVBdIzezZWeZ+tNtSn6mNHqreMMTgxb9Tomiy30+PxTv0d+lIo
	 lgwhjan/BRUEg==
Received: from mbp-2.lan (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-ztdg06021701.me.com (Postfix) with ESMTPSA id 36598A00C0F;
	Tue, 31 Dec 2019 10:03:25 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20191231095801.GK70184@meh.true.cz>
Date: Tue, 31 Dec 2019 11:03:23 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-31_02:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912310086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_020331_843069_97D00001 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

sorry, using a pre-loaded image this time:

root@OpenWrt:/tmp# sysupgrade -v =
openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz
Reading partition table from bootdisk...
Reading partition table from image...
{
	"tests": {
		"fwtool_signature": true,
		"fwtool_device_match": true
	},
	"valid": true,
	"forceable": true,
	"allow_backup": true
}
Saving config files...
boot/config.txt
etc/config/dhcp
etc/config/dropbear
etc/config/firewall
etc/config/network
etc/config/system
etc/config/wireless
etc/dropbear/dropbear_rsa_host_key
etc/group
etc/hosts
etc/inittab
etc/opkg/keys/0b26f36ae0f4106d
etc/opkg/keys/1035ac73cc4e59e3
etc/opkg/keys/5151f69420c3f508
etc/opkg/keys/72a57f2191b211e0
etc/opkg/keys/792d9d9b39f180dc
etc/opkg/keys/9ef4694208102c43
etc/opkg/keys/b2d571e0880ff617
etc/opkg/keys/b5043e70f9a75cde
etc/opkg/keys/c10b9afab19ee428
etc/opkg/keys/dace9d4df16896bf
etc/opkg/keys/dd6de0d06bbd3d85
etc/opkg/keys/f94b9dd6febac963
etc/passwd
etc/profile
etc/rc.local
etc/shadow
etc/shells
etc/sysctl.conf
Commencing upgrade. Closing all shell sessions.
-> d4b74aaa #d4b74aaa          hello: {}
<- d4b74aaa #00000000         lookup: {"objpath":"system"}
-> d4b74aaa #00000000           data: =
{"objpath":"system","objid":177377387,"objtype":1024582224,"signature":{"b=
oard":{},"info":{},"reboot":{},"watchdog":{"frequency":5,"timeout":5,"magi=
cclose":7,"stop":7},"signal":{"pid":5,"signum":5},"validate_firmware_image=
":{"path":3},"sysupgrade":{"path":3,"force":7,"backup":3,"prefix":3,"comma=
nd":3,"options":2}}}
-> d4b74aaa #00000000         status: {"status":0}
<- d4b74aaa #0a92906b         invoke: =
{"objid":177377387,"method":"sysupgrade","data":{"prefix":"/tmp/root","pat=
h":"/tmp/openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz","backup":"=
/tmp/sysupgrade.tgz","command":"/lib/upgrade/do_stage2","options":{"save_p=
artitions":1}}}
-> 06657534 #d4b74aaa         invoke: =
{"objid":177377387,"method":"sysupgrade","data":{"prefix":"/tmp/root","pat=
h":"/tmp/openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz","backup":"=
/tmp/sysupgrade.tgz","command":"/lib/upgrade/do_stage2","options":{"save_p=
artitions":1}},"user":"root","group":"root"}
<- 06657534 #d4b74aaa           data: =
{"objid":177377387,"data":{"error":{"message":"Firmware image couldn't =
be validated"}}}
{
	"error": {
		"message": "Firmware image couldn't be validated"
	}
}
-> d4b74aaa #0a92906b           data: =
{"objid":177377387,"data":{"error":{"message":"Firmware image couldn't =
be validated"}}}
Command failed: Unknown error
<- 06657534 #d4b74aaa         status: {"status":9,"objid":177377387}
-> d4b74aaa #0a92906b         status: {"status":9,"objid":177377387}

=E2=80=94 PN

> On 31 Dec 2019, at 10:58, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2019-12-31 09:42:53]:
>=20
>> root@OpenWrt:~# sysupgrade -v =
https://downloads.openwrt.org/snapshots/targets/brcm2708/bcm2711/openwrt-b=
rcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz
>> wget: SSL support not available, please install one of the =
libustream-.*[ssl|tls] packages as well as the ca-bundle and =
ca-certificates packages.
>=20
> use http:// or install the recommended packages in order to be able to =
use
> https://
>=20
>> Image metadata not found
>> Use sysupgrade -F to override this check when downgrading or flashing =
to vendor firmware
>> Reading partition table from bootdisk...
>> Reading partition table from image...
>> Invalid partition table on /tmp/image.bs
>> Failed to parse message data
>> sh: out of range
>=20
> The download of firmware image has failed, but the sysupgrade process
> continues, so this errors are "expected", following patch[1] should =
fix some
> of this.
>=20
> 1. https://git.openwrt.org/6dbaf71411e7f16cc1c920b6a63bbe33ef2b8921
>=20
> -- ynezz



--===============6865308282005953427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6865308282005953427==--
