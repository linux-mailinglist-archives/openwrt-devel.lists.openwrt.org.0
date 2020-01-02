Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C5012E339
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 08:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AmPvAOXr/AHqVSJeQ6Kejwygk9wzw4mqElfqclQnZSs=; b=a0SmhewsNCtGzkFwONZeTU6qY
	4Z/AcwvUh+QwWiFscVW8J2q4cy5fij6BT68XPnp/xkDpjiGtpsknmSq6LFn5xVkJLAI4QKJtcZeX6
	75wNaqZpqmzCIB68XbO82jdWBEBP3susdis2R9l95YncZk0fSX+E8bbs15tirSaaxEqjnVaXDu/5C
	xwYqyGCgMKVck/X8ocEiPKDZBkJjMEGjfdi+VBU8LLfsDr5i2Yqi/qik83AP74n79ar4LrBULWoTB
	i8hX6Zsdup2SEjydIwbAzw5suQvmeQ69D2pstZARpAGrAT+A4LiQ1icc7capIiIpjOyJqzUbpdIku
	Nc1IRT01w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imuUf-0000Di-Qa; Thu, 02 Jan 2020 07:02:05 +0000
In-Reply-To: <20200101204630.GS70184@meh.true.cz>
Date: Thu, 2 Jan 2020 08:01:54 +0100
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
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21708.1577948522.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============4528734502319118372=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4528734502319118372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4528734502319118372==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-zteg06022001.me.com ([17.58.23.193])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imuUa-0000D3-QG
	for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 07:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577948518; bh=oxKeWaZuZObH+wItIIe/RF9reankSiM1nyW2OiIILKY=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=LgD5Cp0fl2h+M8NUdVkLT6yPM9d6T6SZsUf7/vqwmzAczLc/0iuhR0pCf4jvVawfv
	 9cnIBLKsFIi1Iw018gpgUXvRLuY24Bs7gRyByc9dKsXungpGUmv3cPRlERpJoduasP
	 sA2+uACT4FpVNcgBVPYsntSIqGZX2GA3WAVeF9cYscYWWjfOzwMYRj3rIAT+A9xS7c
	 SPJ62ecpH9oWdkTOKIMOamYMpX1ONnSMpzmIetzLOeQE+e5MLSOwldI7b5DZIsl3Kq
	 q3QMhfhi4qIijCOsv4JejhNh7IVlMeHPjp8mEBNtl9lvBto9nnIyMgXeY9w7jzHdGq
	 ChtrVD6+kuaCw==
Received: from mbp-2.lan (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-zteg06022001.me.com (Postfix) with ESMTPSA id CD31C9007AB;
	Thu,  2 Jan 2020 07:01:57 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20200101204630.GS70184@meh.true.cz>
Date: Thu, 2 Jan 2020 08:01:54 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <93DDE8E1-7766-41E2-B469-F147637128A6@me.com>
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
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-02_01:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001020064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_230200_873397_11D949B3 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.193 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

or perhaps we can ship you a RPi4 and you can return it once you are =
done with it?

> On 1 Jan 2020, at 21:46, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2020-01-01 21:11:30]:
>=20
>> But how come the workaround was to use an older libubox and ubus - =
was there
>> any new check which was not there before?
>=20
> I don't have definitive answer, as I would need RPi-4 (or any other =
real
> hardware with Cortex-A72 core) to find the actual bit in the libubox =
which
> caused this change in the behavior, but here is a part of the commit
> description[1] which might help answering that:
>=20
> It seems like the recent fixes in the libubox library, particulary in
> the jshn sub-component (which empowers json_dump used in the shell
> script executed by the child process) made the execution somehow =
faster,
> thus exposing this racy behaviour in the validate_firmware_image_call =
at
> least on RPi-4 (Cortex-A72) target.
>=20
> As I was unable to trigger this issue even in the QEMU/Cortex-A72 I =
assume,
> that it was simply some kind of race, needed specific timing, provided
> preciously only by that RPi-4 hardware.
>=20
>> actually, it may be visible on the HDMI output - not as flexible as a =
serial
>> console (not so easy to copy paste) but that would allow to see what =
is
>> going on better than the ssh I was using up to now.
>=20
> I've prepared a commit[2] which is going to output that error into the =
syslog
> instead, together with more verbose error message[3] so it's easier to =
track
> it down next time.
>=20
> 1. =
https://gitlab.com/ynezz/openwrt-procd/commit/8904b34203055bdc619cd95581a1=
9b307b91e362
> 2. =
https://gitlab.com/ynezz/openwrt-procd/commit/e87ccf2b7ae17faa2dfda4704842=
79c1bfb51328
> 3. =
https://gitlab.com/ynezz/openwrt-procd/commit/9e45a44859e81cc84dbc39c42c9d=
acef30b96429
>=20
> -- ynezz



--===============4528734502319118372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4528734502319118372==--
