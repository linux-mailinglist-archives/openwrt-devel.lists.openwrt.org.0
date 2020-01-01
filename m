Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DE912DF18
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 15:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4JfcdZbI58coN4qKYfrPbpkT2IMpzV8coqQ80gL1qBI=; b=Nj2bmRaMc7d8kyEJKVZ8LiZwW
	Mh+q6V7rJjBnbdzFH3xI1u2LCaHjVyPpU4HkvMJx6M+4lhLkoX09ZvwuzUVvZCQ9RaZQp/a7UeYz3
	Omp97UeI6j4NkxvSBoAylHogTjTzF4Ngofv6ynWUeIcg4e3ZKcjRuE2VL5XnIfXgywI1uOHW6Jrua
	wQ9p8iMEDc3XkCYjJIr1nWh8nAPKoliOrmmZ2xGmtGG3ubWhqa96f2Ql5JqNpSgzjXbQkFn6aoOBG
	YkwES6CCkspvGy8opYwlbc/Opo+Gj87sNJi/Sck0kmsQka5OJxps3AlxsHUvnBdAoOX1kFPxa1/wA
	O7HPVIyYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imemF-0007Jn-Bo; Wed, 01 Jan 2020 14:15:11 +0000
In-Reply-To: <20200101124453.GM70184@meh.true.cz>
Date: Wed, 1 Jan 2020 15:14:47 +0100
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21622.1577888097.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============7598345920047621860=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7598345920047621860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7598345920047621860==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-zteg06012001.me.com ([17.58.23.197])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imelz-0007JV-I2
	for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 14:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577888092; bh=RPhI61x3ZFbxTZeIMRnaBgG1v9GKhU624QNtZGzzZpU=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=u66WQfiyo+L0dxTciK5i1tqGV3zDrT5ce1wWBayW2yhoEDw4Ss6/dzufO1BBTH4mu
	 ehtScGOQ0Ph1ClyArqOiNUoRPEWN29s6Py0w0gnKnMZQiUI741mg1MAXbQY+bjH5aA
	 XGGtOQy+CNRS8dAydwOL2pRxQYYN3c8Yggl3D0MZ3P9aVKt+ahDzXKd0KR50Y4sEfw
	 5tc31OOJoHiymPDMZNCn3+vbvEoxGvoPDIhAs7CgvOoXGvKmWZd7PqkPgwgwbvxkxc
	 URciP82rpXVhH3aUnyBkEUcSDm5zfjj4umXPjlSRLTbI6U4TfJyCfbvdJ74ASZscuT
	 5eU9duiWx7pRg==
Received: from [192.168.176.103] (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-zteg06012001.me.com (Postfix) with ESMTPSA id 44FB3A00E01;
	Wed,  1 Jan 2020 14:14:51 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20200101124453.GM70184@meh.true.cz>
Date: Wed, 1 Jan 2020 15:14:47 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz> <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-01_04:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001010129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_061455_615524_A1485DAE 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.197 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.23.197 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

The updated procd did actually allow the upgrade to proceed:


root@OpenWrt:~# sysupgrade -v =
openwrt-brcm2708-bcm2711-rpi-4-squashfs-sysupgrade.img.gz=20
Image not in /tmp, copying...
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
-> 7b93da68 #7b93da68          hello: {}
<- 7b93da68 #00000000         lookup: {"objpath":"system"}
-> 7b93da68 #00000000           data: =
{"objpath":"system","objid":-672961887,"objtype":-575613211,"signature":{"=
board":{},"info":{},"reboot":{},"watchdog":{"frequency":5,"timeout":5,"mag=
icclose":7,"stop":7},"signal":{"pid":5,"signum":5},"validate_firmware_imag=
e":{"path":3},"sysupgrade":{"path":3,"force":7,"backup":3,"prefix":3,"comm=
and":3,"options":2}}}
-> 7b93da68 #00000000         status: {"status":0}
<- 7b93da68 #d7e36aa1         invoke: =
{"objid":-672961887,"method":"sysupgrade","data":{"prefix":"/tmp/root","pa=
th":"/tmp/sysupgrade.img","backup":"/tmp/sysupgrade.tgz","command":"/lib/u=
pgrade/do_stage2","options":{"save_partitions":1}}}
-> 13c8230f #7b93da68         invoke: =
{"objid":-672961887,"method":"sysupgrade","data":{"prefix":"/tmp/root","pa=
th":"/tmp/sysupgrade.img","backup":"/tmp/sysupgrade.tgz","command":"/lib/u=
pgrade/do_stage2","options":{"save_partitions":1}},"user":"root","group":"=
root"}
Connection to 172.30.31.233 closed by remote host.



r11869-a176f8d3ec


Then using this current development snapshot it has failed again, and =
then again with just updating procd it has worked correctly. So the =
problem seems to be in procd (or interaction of procd with something =
else - such as libubox).


=E2=80=94 PN

> On 1 Jan 2020, at 13:44, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2019-12-31 14:56:13]:
>=20
> I was suspecting some issue in jshn, which empowers the json_dump =
command, but
> it seems, that the JSON passed from =
/usr/libexec/validate_firmware_image back
> to validate_firmware_image_call() looks correct:
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
>=20
> but validate_firmware_image_call() somehow doesn't get/parse it and =
yields:
>=20
>> {
>> 	"error": {
>> 		"message": "Firmware image couldn't be validated"
>> 	}
>> }
>=20
> looking at the validate_firmware_image_call() I really don't see =
anything related to
> libubox which would lead to this error, so can you please try again =
with more
> verbose version of procd[1]? Thanks!
>=20
> 1.  =
https://gitlab.com/ynezz/openwrt/commit/a8db973cc2bcf8d877b939801eba529f29=
ab7d3a
>=20
> -- ynezz



--===============7598345920047621860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7598345920047621860==--
