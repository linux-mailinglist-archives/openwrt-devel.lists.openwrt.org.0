Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C0D12D952
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 14:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w1h87OcyxZAGEpo5Pstz1w0PApkHZb65yNfBoCrxCBw=; b=KcQXMXon9dQ9Jx3A8LFJRCbpn
	/po6U5LuhgmPMWyxEkUc89Fj0RaW6yXzSD1IvtfKPAbJGuKUiuQE9y+9HiuuJMVvzV2ocn8a8VmgV
	ffQAOAU3TAE+qZdmYWXhWlkZsMjSZ+5A5NDqmT5guxc0V0G3gaXXiQK0x+IwT3hi+C+wiccccesbO
	qC7fBWKB75f4GCqIukaovAd+lqVyHdyzjfGCSq6+gMzzY0CvkmlRdiza4Ap03wWSKVcrO021siX7y
	6F2CL/ECDR6xX9lKDjVunkctpUAWq8eZsveFP2RND0EjI97DMM5USINqr4/i7/GG5/WxIbMORC1XV
	HuqyAhQ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imI0Y-0008RS-LX; Tue, 31 Dec 2019 13:56:26 +0000
In-Reply-To: <20191231134925.GL70184@meh.true.cz>
Date: Tue, 31 Dec 2019 14:56:13 +0100
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21567.1577800581.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============4485716613217169907=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4485716613217169907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4485716613217169907==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06021101.me.com ([17.58.23.180])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imI0R-0008RA-Ow
	for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 13:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577800577; bh=LEfbjleIftH4c9kkEUCEgH+DztYbygOuSjiS43UiQ6s=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=zxS+mFxFm6HTe0Juld6kLlAn72jHo1zWiPc2WM89dB1QZfibMWSL6qQe755dk+Tf5
	 0Ld5cl6A6/chqsaKG5YUHx2txi8smAa1yVbpxDUDjAY3ma/rxCDQHPEvJDyaqsYFCJ
	 Hz3L+Q5vl38jq8bWdBxXExgigRYva+i9ugx/SvDZBvfhNe3zt50wv5uxA08XUU04Ks
	 4RzCSqpfq5Gj+cWJY43aPkkjQqvk4BWL6wGR7SE8ZRZVIMb6KtHIZ5zbatnK1Z9Ddk
	 RlozY+uMLPnPiM/sVTOvJBgXavGWhWeRHYKzF0MPOHGQ4qmKSVGuA7IKdsfZvQX8EO
	 xIEM0a1BwIbsQ==
Received: from [192.168.176.105] (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-ztdg06021101.me.com (Postfix) with ESMTPSA id 9517D340D2D;
	Tue, 31 Dec 2019 13:56:16 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20191231134925.GL70184@meh.true.cz>
Date: Tue, 31 Dec 2019 14:56:13 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-31_04:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912310122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_055619_834136_AEE6A767 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.180 listed in list.dnswl.org]
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

there you go:

root@OpenWrt:/tmp# sysupgrade -v =
openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz
Reading partition table from bootdisk...
Reading partition table from image...
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
{
	"error": {
		"message": "Firmware image couldn't be validated"
	}
}
Command failed: Unknown error
root@OpenWrt:/tmp# ubus monitor &
root@OpenWrt:/tmp# -> d3e9aa79 #00000003         status: {"status":0}

root@OpenWrt:/tmp# sysupgrade -v =
openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz
Reading partition table from bootdisk...
Reading partition table from image...
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
-> 827c4bd9 #827c4bd9          hello: {}
<- 827c4bd9 #00000000         lookup: {"objpath":"system"}
-> 827c4bd9 #00000000           data: =
{"objpath":"system","objid":177377387,"objtype":1024582224,"signature":{"b=
oard":{},"info":{},"reboot":{},"watchdog":{"frequency":5,"timeout":5,"magi=
cclose":7,"stop":7},"signal":{"pid":5,"signum":5},"validate_firmware_image=
":{"path":3},"sysupgrade":{"path":3,"force":7,"backup":3,"prefix":3,"comma=
nd":3,"options":2}}}
-> 827c4bd9 #00000000         status: {"status":0}
<- 827c4bd9 #0a92906b         invoke: =
{"objid":177377387,"method":"sysupgrade","data":{"prefix":"/tmp/root","pat=
h":"/tmp/openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz","backup":"=
/tmp/sysupgrade.tgz","command":"/lib/upgrade/do_stage2","options":{"save_p=
artitions":1}}}
-> 06657534 #827c4bd9         invoke: =
{"objid":177377387,"method":"sysupgrade","data":{"prefix":"/tmp/root","pat=
h":"/tmp/openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz","backup":"=
/tmp/sysupgrade.tgz","command":"/lib/upgrade/do_stage2","options":{"save_p=
artitions":1}},"user":"root","group":"root"}
{
	"error": {
		"message": "Firmware image couldn't be validated"
	}
}
Command failed: Unknown error
<- 06657534 #827c4bd9           data: =
{"objid":177377387,"data":{"error":{"message":"Firmware image couldn't =
be validated"}}}
-> 827c4bd9 #0a92906b           data: =
{"objid":177377387,"data":{"error":{"message":"Firmware image couldn't =
be validated"}}}
<- 06657534 #827c4bd9         status: {"status":9,"objid":177377387}
-> 827c4bd9 #0a92906b         status: {"status":9,"objid":177377387}

cat /tmp/vfi-json.log

{
	"tests": {
		"fwtool_signature": true,
		"fwtool_device_match": true
	},
	"valid": true,
	"forceable": true,
	"allow_backup": true
}
{
	"tests": {
		"fwtool_signature": true,
		"fwtool_device_match": true
	},
	"valid": true,
	"forceable": true,
	"allow_backup": true
}
{
	"tests": {
		"fwtool_signature": true,
		"fwtool_device_match": true
	},
	"valid": true,
	"forceable": true,
	"allow_backup": true
}
{
	"tests": {
		"fwtool_signature": true,
		"fwtool_device_match": true
	},
	"valid": true,
	"forceable": true,
	"allow_backup": true
}

> On 31 Dec 2019, at 14:49, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2019-12-31 11:03:23]:
>=20
>> root@OpenWrt:/tmp# sysupgrade -v =
openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz
>> Reading partition table from bootdisk...
>> Reading partition table from image...
>=20
> This output is from /sbin/sysupgrade calling =
/usr/libexec/validate_firmware_image:
>=20
>> {
>> 	"tests": {
>> 		"fwtool_signature": true,
>> 		"fwtool_device_match": true
>> 	},
>> 	"valid": true,
>> 	"forceable": true,
>> 	"allow_backup": true
>> }
>> Saving config files...
>=20
> ...snip...
>=20
>> Commencing upgrade. Closing all shell sessions.
>=20
> and here should be same output from procd calling
> /usr/libexec/validate_firmware_image, but it is missing as probably =
procd
> consumes the stderr output, so probably something like this is needed:
>=20
> diff --git =
a/package/base-files/files/usr/libexec/validate_firmware_image
> b/package/base-files/files/usr/libexec/validate_firmware_image
> index f85fb9e4b435..754d53b2edfe 100755
> --- a/package/base-files/files/usr/libexec/validate_firmware_image
> +++ b/package/base-files/files/usr/libexec/validate_firmware_image
> @@ -62,5 +62,6 @@ json_init
> 	json_add_boolean valid "$VALID"
> 	json_add_boolean forceable "$FORCEABLE"
> 	json_add_boolean allow_backup "$ALLOW_BACKUP"
> +json_dump -i >> /tmp/vfi-json.log
>  json_dump -i
>  json_set_namespace $old_ns
>=20
> and then run:
>=20
> $ ubus monitor &
> $ sysupgrade -v openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz
> $ cat /tmp/vfi-json.log
>=20
> -- ynezz



--===============4485716613217169907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4485716613217169907==--
