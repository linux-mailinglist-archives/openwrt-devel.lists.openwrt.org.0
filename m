Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FC312E97A
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 18:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qCeNt//RNqJUWuCcuklMRrA3STcgwKPKqOqIFXgUi0o=; b=j7ir/0DEJOUIo5m5eA8HwVGeT
	BLZeklyPSBpwUwRS97nXfP/sJ15wFFLaFXaZ6woeAXG6quxVLUF58nDMj/exuiTzbiuTsZ5YGiEb3
	KIA4jn02EvWMIUkSrdE3SMX4dTFUla1DaKaU0U6xrP3dacBl8Y34nNRNL2hFYfceH08Z0HAPa2Vco
	e+NBdrojbDoiL1yaXoXQ+JujlR9bSgpzy1H+r5u7wX+1k8t5ouvExTn37XrOTTFs1xzpSRK6KjYBD
	PCeduj5hpAzII+JiJ0kGaKyDE16cU+bY7yAoUd49gtCpN2DFJRM4ovlx/SeTz8KpyxnY2H8ScZ6/1
	XF25QsGeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4Sn-00077R-JQ; Thu, 02 Jan 2020 17:40:49 +0000
In-Reply-To: <60DBDE96-C4EB-42D9-8927-DF7771685F0A@volatilesystems.org>
Date: Thu, 2 Jan 2020 18:40:18 +0100
References: <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <5e23fc80-72c7-5fe8-cf61-1b1390844a64@iki.fi>
 <60DBDE96-C4EB-42D9-8927-DF7771685F0A@volatilesystems.org>
To: Stijn Segers <foss@volatilesystems.org>
MIME-Version: 1.0
Message-ID: <mailman.21776.1577986836.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hannu Nyman <hannu.nyman@iki.fi>,
 =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
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
Content-Type: multipart/mixed; boundary="===============8249623956272237118=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8249623956272237118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8249623956272237118==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06011901.me.com ([17.58.23.198])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4SX-00070w-NP
	for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 17:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577986829; bh=bezvlKC0ZpY2nVXp+MtdPVAtOl77hZAnQV83+p3rnEw=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=vNsgZ7S5vmuWBDBpYQgOBpqpaLu7kz5LuC46/JD/3/9IPtWRQb4HVLYUIZnst655m
	 JvyanttCwjYS2yhHNfWuwi/DOs9GQZTBqAinCjHOsikUPW1eynGb99tSigEXWIy6QF
	 7xawUG1QeylAN56SZNBMHL41IV7oSFn46IQ3WEBLfvEsmrAV1JQBi6VhifE9fI6ITA
	 fLlZcDwaL+z9ZkKarbJ3/ZmxjjLkCJPs+6iI+azZg/bE4aTVThOKwkSUTSeAsIXVCN
	 RXtWN9Uk62XabMnbNkzHk3/kNZxk6F8f/M5ulqwVW7Webcaj44VsYIv+2t3UxmcMOU
	 jss1aEQn2tbPw==
Received: from mbp-2.lan (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-ztdg06011901.me.com (Postfix) with ESMTPSA id 5E54BA60DFF;
	Thu,  2 Jan 2020 17:40:23 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <60DBDE96-C4EB-42D9-8927-DF7771685F0A@volatilesystems.org>
Date: Thu, 2 Jan 2020 18:40:18 +0100
Cc: openwrt-devel@lists.openwrt.org,
 Hannu Nyman <hannu.nyman@iki.fi>,
 =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5B5E9BA4-0BE8-4FDD-B089-35658B983306@me.com>
References: <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <5e23fc80-72c7-5fe8-cf61-1b1390844a64@iki.fi>
 <60DBDE96-C4EB-42D9-8927-DF7771685F0A@volatilesystems.org>
To: Stijn Segers <foss@volatilesystems.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-02_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001020149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_094033_786044_3092852E 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Q: are all the platforms where this problem has been observed multi-core =
(like the RPi4 or mt7621) or has this ever been experienced on a single =
core system?

Was the Qemu test Petr S. has done been running a multi-core or single =
core emulation?

Petr



> On 2 Jan 2020, at 18:36, Stijn Segers <foss@volatilesystems.org> =
wrote:
>=20
> Hannu Nyman <hannu.nyman@iki.fi> schreef op 2 januari 2020 16:48:08 =
CET:
>> Petr =C5=A0tetiar kirjoitti 1.1.2020 klo 22.46:
>>> Petr Nov=C3=A1k <petrn@me.com> [2020-01-01 21:11:30]:
>>>=20
>>>> But how come the workaround was to use an older libubox and ubus -
>> was there
>>>> any new check which was not there before?
>>> I don't have definitive answer, as I would need RPi-4 (or any other
>> real
>>> hardware with Cortex-A72 core) to find the actual bit in the libubox
>> which
>>> caused this change in the behavior, but here is a part of the commit
>>> description[1] which might help answering that:
>>>=20
>>>  It seems like the recent fixes in the libubox library, particulary
>> in
>>>  the jshn sub-component (which empowers json_dump used in the shell
>>>  script executed by the child process) made the execution somehow
>> faster,
>>>  thus exposing this racy behaviour in the
>> validate_firmware_image_call at
>>>  least on RPi-4 (Cortex-A72) target.
>>>=20
>>> As I was unable to trigger this issue even in the QEMU/Cortex-A72 I
>> assume,
>>> that it was simply some kind of race, needed specific timing,
>> provided
>>> preciously only by that RPi-4 hardware.
>>=20
>>=20
>> I think that there may have been an older race condition behaviour =
that
>> has=20
>> now just surfaced better with RPi4 after the recent changes. It has
>> earlier=20
>> manifested itself sometimes with some routers, but more rarely.
>>=20
>> I have seen an occasional failure of sysupgrade in one of my routers
>> since=20
>> October (ar71xx or ath79  / WNDR3700v2).
>=20
> I've seen the same multiple times on more than one mt7621 device and I =
opened  FS#2696 on this.
>=20
> Granted, not the most verbose bug report.
>=20
> Stijn
>=20
>=20
>=20
>=20
>> I wrote about that to the
>> mailing=20
>> list in November, although then I thought that it might be just a
>> "force"=20
>> option failure:
>> =
http://lists.infradead.org/pipermail/openwrt-devel/2019-November/019996.ht=
ml
>>=20
>> Others have seen that also, based on forum discussion:
>> https://forum.openwrt.org/t/build-for-wndr3700v1-v2-wndr3800/64/295
>>=20
>> Petr Novak describes similar thing as my error as: "it does just =
reboot
>> but=20
>> does not flash anything."
>>=20
>> I have tried to debug that in my WNDR3800 that has serial console
>> connection,=20
>> but have not managed to produce the error in that 3800. With 3800 the=20=

>> sysupgrade has succeeded always. However, in my 3700v2 (that has
>> identical=20
>> hardware except the RAM size) on the other side of the building, I
>> still=20
>> occasionally see the behaviour of LuCI based sysupgrade starting ok,
>> but the=20
>> router booting back to the same firmware after an invisible error.
>> After that=20
>> reboot the next sysupgrade attempt via LuCI usually works quite ok.
>> (sounds=20
>> like a sysupgrade from a recently booted system usually works, but=20
>> sysupgrading a system after some runtime does sometimes not work.)
>>=20
>> I first thought that it was related to using force in the =
ar71xx/ath79
>> jump,=20
>> but it has been present in normal sysupgrades.
>>=20
>> Possibly a manifestation of the same race condition in=20
>> sysupgrade/procd/libubox, so hopefully your patches will fix also =
that.
>>=20
>>=20
>>=20
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



--===============8249623956272237118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8249623956272237118==--
