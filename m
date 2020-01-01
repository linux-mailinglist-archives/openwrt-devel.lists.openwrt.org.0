Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB3512E05B
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 21:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9UasXsPn9VOtCKd+DApPx1rpdvgnrCFOTlLlHzus3bg=; b=S45WNwF+D6EHUUooRXYum8ENt
	KTOoQYXmCWpdPMhAWI3qWGBmRwnvOJVi7gECU1km4EHGzlD/pKn20sv2WFIQJdOs3MEIqgJ+4k67n
	1VESoWopykoBEBnivT2L6KDs0OTyT5s4kAGXG3i5WYwWcHf83gN7RxIWlxq+CRKBZUwehPhPXDUF1
	hIf4WFaEUPnfPcfOFoyJ92FxEMAZfs6opgnRf+gLBet7v/uObBW4bvoATf1hRyg9I5I7RhaLkrSjb
	z5xvEeDYbEnuLqJ5x1LPoSQeyBAjCIvaEEUngm/ss4Hp4CY2Rv8znfvHPcqkcH9XPgj9b4Zl5XSw3
	JZnUwvQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imkLL-0000N6-Qy; Wed, 01 Jan 2020 20:11:47 +0000
In-Reply-To: <20200101200825.GR70184@meh.true.cz>
Date: Wed, 1 Jan 2020 21:11:30 +0100
References: <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21649.1577909499.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============8104078171047889731=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8104078171047889731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8104078171047889731==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-hyfv06021301.me.com ([17.58.23.188])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imkLA-0000MF-4E
	for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 20:11:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577909494; bh=tdmQI12A/vu3MAyQ7hzAh7vdzqbnew/zBFfRkMoIxoI=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=2BC3A9t4tAa0KUGoga7pYzIS3JY8IWbBQTH8SnGE9Y4mbSAR+vypl+wO+xsYkI/+Z
	 0cPd1mpVnQEYA7prvw95/njf9LHGvs6A9kjTf5WtM+vJHw0DeXU8PDDyM4WOLHPu8j
	 hFeV/0K5xFGHxxHb5gYg7fob3MuSQdFmy/IunZ3W/A96RHQsU606JfaSpOsCegvhgV
	 L2GJxgmAKgQyXIfunMJ2Tn/GxKFaOjA0WJFmslE4QSQMISgKQOKD+bfjoWi1pUgO2X
	 6uKKunpVEJlgrsS7I4NuFIdrafms7WbP4xDEmqY0rPmI1qU84NfUOB2lfrfdskPCzq
	 5T3u0dyLoTGWA==
Received: from [192.168.176.103] (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-hyfv06021301.me.com (Postfix) with ESMTPSA id 4F53D40758;
	Wed,  1 Jan 2020 20:11:33 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <20200101200825.GR70184@meh.true.cz>
Date: Wed, 1 Jan 2020 21:11:30 +0100
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
References: <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-01_06:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001010185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_121136_184802_87D431C3 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.188 listed in list.dnswl.org]
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

yes, I do not have the serial console on the RPi.

But how come the workaround was to use an older libubox and ubus - was =
there any new check which was not there before?=20



> On 1 Jan 2020, at 21:08, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> Petr Nov=C3=A1k <petrn@me.com> [2020-01-01 18:13:06]:
>=20
>> 5c6df2def2a1d26313b45cb40e2268a08c59f00 - FAILS
>> 465676c8b12618ec99122d0cc1217994de884284 - WORKS
>> 5bd12760e8fce026fd2a82d56f7b3c8dff27e096 - WORKS
>> 8e195b325a86b4dc99ee5a9ee0b637cf266f9a0a - WORKS
>=20
> Nice, thanks a lot for your help.
>=20
>> The procd after forking the validate_firmware_image process does this =
in the
>> parent (1) process (using strace):
>>=20
>> clone(child_stack=3DNULL, flags=3DSIGCHLD)  =3D 1303
>> rt_sigprocmask(SIG_SETMASK, [], NULL, 8) =3D 0
>> close(10)                               =3D 0
>> read(9, 0x7fff5d1420, 64)               =3D ? ERESTARTSYS (To be =
restarted if SA_RESTART is set)
>> --- SIGCHLD {si_signo=3DSIGCHLD, si_code=3DCLD_EXITED, si_pid=3D1372, =
si_uid=3D0, si_status=3D1, si_utime=3D1, si_stime=3D0} =E2=80=94
>> write(6, "w", 1)                        =3D 1
>> rt_sigreturn({mask=3D[]})                 =3D -1 EINTR (Interrupted =
system call)
>> close(9)
>=20
> Yep, but this EINTR leads to the "Failed to parse JSON: 4" which was =
missing
> in your logs, so I was confused. Then I saw `Connection to =
172.30.31.233
> closed by remote host.` in one of your latest logs and I've realized, =
that
> you're not able to see those messages actually as those are only =
visible on
> the serial console...
>=20
> -- ynezz



--===============8104078171047889731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8104078171047889731==--
