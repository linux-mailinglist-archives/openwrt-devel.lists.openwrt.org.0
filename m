Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C04612D723
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 09:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WQaP9L4FqfESIzkPBwNuwxEwZOzgms0+qG2Z0Q9Hl+M=; b=kBewX0BzTqxFW6Ee5trRN8oot
	PPIo0Nq7tl7fNY4S9YiHK3ctOJa0QfKHZ7OPpqT5Imz8n2piq96Qh057376wTf7RUQClvFux5Ksde
	ig6t+yhC1rY6256F78HmoCNQwPEHmbGDI5gJTrpq/oFUOxjEpmiGr3H2Bfg73Oo5rOq2Zbi5MnGwd
	A7W+ClWK16JXMzm0NkuMcViTfaIW6qTbwNliPFnI5roQgeuHDgZZvXEBAAhIC0y25Q/swmR4v7JJa
	cBEsv55H+feB9crWhWDsw8ME1VfRPoRF2w4Wm3srU/EMHSPQUDYdIhSER/gWcxnzzJAf/BmXlireI
	EzD4kYCog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imD7J-0008BJ-9n; Tue, 31 Dec 2019 08:43:05 +0000
In-Reply-To: <20191230225631.GJ70184@meh.true.cz>
Date: Tue, 31 Dec 2019 09:42:53 +0100
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21498.1577781781.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============8308406279546742088=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8308406279546742088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8308406279546742088==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06021701.me.com ([17.58.23.196])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imD7C-0008Aq-H0
	for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 08:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577781776; bh=pq36zPS8+OPhapo2Hlrb2w2jin88G8n1RzUxpEMaGow=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=uNy1dyUvFcC1hagL7didsvTNGmoxpfeeikITObhW9fSlnNPXthPt+GJcKcUf8Q1oy
	 c+T7sE7nZ7att2GlKcCVkQPEZ0PGAIbUAsYUnOlNWPSfoJSRxDZa3y6XJMou3TDkCk
	 9AmE83KrFQwQfvxswaHwnb5TC/GN0Q7UvyFVPFy2OZt9zI4w53HVnttaIimn5Qq5rD
	 DJjDHPCBFVS7sdO2fTXis3YrDy4tkBcS4EPAC45ldO1FuSDVr0MPSZQiG4NtU/dxyF
	 tVrz+xf/hVxiqNeW2NVkP5pZI6cDiRNDk68oUJmUVU1ZrvPR/rQoFodK0RS1d4W5hu
	 rXO5U8gfZKzFw==
Received: from mbp-2.lan (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-ztdg06021701.me.com (Postfix) with ESMTPSA id D0BCBA00B4A;
	Tue, 31 Dec 2019 08:42:55 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20191230225631.GJ70184@meh.true.cz>
Date: Tue, 31 Dec 2019 09:42:53 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-31_02:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912310073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_004258_589892_07A077AC 
X-CRM114-Status: UNSURE (   9.64  )
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

here is the output from the sysupgrade with the additional change and =
ubus monitor as suggested. This is tested with the development snapshot =
from the 30th of December: r11832-c48b571ad7


root@OpenWrt:~# sysupgrade -v =
https://downloads.openwrt.org/snapshots/targets/brcm2708/bcm2711/openwrt-b=
rcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz
wget: SSL support not available, please install one of the =
libustream-.*[ssl|tls] packages as well as the ca-bundle and =
ca-certificates packages.
Image metadata not found
Use sysupgrade -F to override this check when downgrading or flashing to =
vendor firmware
Reading partition table from bootdisk...
Reading partition table from image...
Invalid partition table on /tmp/image.bs
Failed to parse message data
sh: out of range
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
-> e8d7994a #e8d7994a          hello: {}
<- e8d7994a #00000000         lookup: {"objpath":"system"}
-> e8d7994a #00000000           data: =
{"objpath":"system","objid":619517119,"objtype":1675602203,"signature":{"b=
oard":{},"info":{},"reboot":{},"watchdog":{"frequency":5,"timeout":5,"magi=
cclose":7,"stop":7},"signal":{"pid":5,"signum":5},"validate_firmware_image=
":{"path":3},"sysupgrade":{"path":3,"force":7,"backup":3,"prefix":3,"comma=
nd":3,"options":2}}}
-> e8d7994a #00000000         status: {"status":0}
<- e8d7994a #24ed14bf         invoke: =
{"objid":619517119,"method":"sysupgrade","data":{"prefix":"/tmp/root","pat=
h":"/tmp/sysupgrade.img","backup":"/tmp/sysupgrade.tgz","command":"/lib/up=
grade/do_stage2","options":{"save_partitions":1}}}
-> 35669f7b #e8d7994a         invoke: =
{"objid":619517119,"method":"sysupgrade","data":{"prefix":"/tmp/root","pat=
h":"/tmp/sysupgrade.img","backup":"/tmp/sysupgrade.tgz","command":"/lib/up=
grade/do_stage2","options":{"save_partitions":1}},"user":"root","group":"r=
oot"}
<- 35669f7b #e8d7994a           data: =
{"objid":619517119,"data":{"error":{"message":"Firmware image couldn't =
be validated"}}}
{
	"error": {
		"message": "Firmware image couldn't be validated"
	}
}
-> e8d7994a #24ed14bf           data: =
{"objid":619517119,"data":{"error":{"message":"Firmware image couldn't =
be validated"}}}
Command failed: Unknown error
<- 35669f7b #e8d7994a         status: {"status":9,"objid":619517119}
-> e8d7994a #24ed14bf         status: {"status":9,"objid":619517119}
root@OpenWrt:~#


> On 30 Dec 2019, at 23:56, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2019-12-30 20:43:36]:
>=20
> Hi,
>=20
>> I will do my best to reproduce the issue giving more details, I will =
post
>> any more details here tomorrow.
>=20
> if I may, can you do following for the start:
>=20
> 1. add following change (changing it directly on device right before =
step 2.
>   should be enough):
>=20
> diff --git =
a/package/base-files/files/usr/libexec/validate_firmware_image
> b/package/base-files/files/usr/libexec/validate_firmware_image
> index f85fb9e4b435..aed9cdfd64b5 100755
> --- a/package/base-files/files/usr/libexec/validate_firmware_image
> +++ b/package/base-files/files/usr/libexec/validate_firmware_image
> @@ -62,5 +62,6 @@ json_init
>         json_add_boolean valid "$VALID"
>         json_add_boolean forceable "$FORCEABLE"
>         json_add_boolean allow_backup "$ALLOW_BACKUP"
> +json_dump -i >&2
>  json_dump -i
>  json_set_namespace $old_ns
>=20
> 2. run:
>=20
> $ ubus monitor &
> $ sysupgrade -v =
openwrt-brcm2708-bcm2711-rpi-4-squashfs-sysupgrade.img.gz
>=20
> and send the output, thanks!
>=20
> -- ynezz



--===============8308406279546742088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8308406279546742088==--
