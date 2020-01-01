Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194A412DFA3
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 18:13:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:To:In-Reply-To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l9LSlwl5vFxlKhLiTpakO0Qhr8iK9M1NWai2ShB+gxg=; b=bcOH3YpZ0y1Wa7J1Sp756nqa5
	Mxo/TvuSpzJZUgiiP8jOPpA9gjlDaFOAv09TN7l9Ge+Trc1ju02GaWT4H+CJz66ZMhycyYwcTnRxG
	wy/8CUXZSw2g4mPeEKo/m5d+Q87jqiFAN86PxciSVDazD18SuAUYfPZFSLLoFW57Rr5a9c4GAF60F
	Khr31SxiOPWIohrUDKu0fe7RJMI14S9nEvpsasoecPfx1JeG6mnSBemV/8CMYdk1lWVv9AdD6YEeg
	AFak+PJCCbe6NczNbEB+mef7OaxkX/hZRYl1s5eBEHAqxN8385b4NfDd9OWI5HDsSx6LJXskSZ8PS
	agd6qJMKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imhYe-0007FQ-Pd; Wed, 01 Jan 2020 17:13:20 +0000
Date: Wed, 1 Jan 2020 18:13:06 +0100
In-Reply-To: <20200101161447.GQ70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
References: <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21645.1577898793.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============0064836377139583645=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0064836377139583645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0064836377139583645==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06021101.me.com ([17.58.23.180])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imhYV-0007F7-8C
	for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 17:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577898790; bh=SkVBBkIadYV3jMOxMcsatIHxmGSXprLaQL7QwV9pYDs=;
	h=From:Message-Id:Content-Type:Subject:Date:To;
	b=BqkXNREgahtzNmZEr0T9VXLp+musFUjHZCWze19kZ7ZuLuErxFkdLi1avfmMd4aOS
	 7t3YkVL7auoRv8LUmRhVlBQs601pGVI8cH9+7+a55c4JukWvC7BDYc9Z+pkAJj2AHm
	 wa/xW2IHgpBQkmmigBs73cqsBcRoQtz778axzATZdGjLI7wzr3MQPDIlq45ZDU6hPE
	 BbpLu79RmX0G8mHZzqE3auy6ZnXd9fLjVHTBkd33OAicy3WsKvagbHjeAKjcgzZDE9
	 B6LD5/pkZywiF6VXGkxnV41Ud+yTWVHSh7lVoZ7gx128UfyG6EUGe+Y3cXPzyBkNZf
	 9qbiOnuPkD6ew==
Received: from [192.168.176.103] (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-ztdg06021101.me.com (Postfix) with ESMTPSA id 425FB340E2F;
	Wed,  1 Jan 2020 17:13:09 +0000 (UTC)
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
Message-Id: <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DA364966-7FB4-471F-B137-79170928B6B3"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
Date: Wed, 1 Jan 2020 18:13:06 +0100
In-Reply-To: <20200101161447.GQ70184@meh.true.cz>
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 openwrt-devel@lists.openwrt.org
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
References: <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-01_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001010157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_091311_309048_E94C189D 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.180 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature


--Apple-Mail=_DA364966-7FB4-471F-B137-79170928B6B3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Here are the results:

1. build with =
PKG_SOURCE_VERSION:=3D5ed190aae1b3985719046f4c744e311fc9ef18e3, test

Fails

2. build with =
PKG_SOURCE_VERSION:=3D6544e4f1fbdbb92df8a3776e449fdb5602b8ddcd, test

the commit hash does not match any version in =
https://gitlab.com/ynezz/openwrt-procd/commits/wip

3. build with =
PKG_SOURCE_VERSION:=3Dff03f3ed9b6af8b209dae63f24790664c94bd916, test

the commit hash does not match any version in =
https://gitlab.com/ynezz/openwrt-procd/commits/wip


and then:

5c6df2def2a1d26313b45cb40e2268a08c59f00 - FAILS

465676c8b12618ec99122d0cc1217994de884284 - WORKS

5bd12760e8fce026fd2a82d56f7b3c8dff27e096 - WORKS

8e195b325a86b4dc99ee5a9ee0b637cf266f9a0a - WORKS

I did get confused, as when it reports no error but the image is the =
same as the previous one, it does just reboot but does not flash =
anything. but when using a different image it did actually flash it as =
expected.


The procd after forking the validate_firmware_image process does this in =
the parent (1) process (using strace):

clone(child_stack=3DNULL, flags=3DSIGCHLD)  =3D 1303
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) =3D 0
close(10)                               =3D 0
read(9, 0x7fff5d1420, 64)               =3D ? ERESTARTSYS (To be =
restarted if SA_RESTART is set)
--- SIGCHLD {si_signo=3DSIGCHLD, si_code=3DCLD_EXITED, si_pid=3D1372, =
si_uid=3D0, si_status=3D1, si_utime=3D1, si_stime=3D0} =E2=80=94
write(6, "w", 1)                        =3D 1
rt_sigreturn({mask=3D[]})                 =3D -1 EINTR (Interrupted =
system call)
close(9)





--Apple-Mail=_DA364966-7FB4-471F-B137-79170928B6B3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div>Here are the results:</div><div><br =
class=3D""></div><div>1. build with =
PKG_SOURCE_VERSION:=3D5ed190aae1b3985719046f4c744e311fc9ef18e3, test<br =
class=3D""><div><br class=3D""></div>Fails</div><div><br =
class=3D""></div><div>2. build with =
PKG_SOURCE_VERSION:=3D6544e4f1fbdbb92df8a3776e449fdb5602b8ddcd, =
test</div><div><br class=3D""></div><div>the commit hash does not match =
any version in&nbsp;<a =
href=3D"https://gitlab.com/ynezz/openwrt-procd/commits/wip" =
class=3D"">https://gitlab.com/ynezz/openwrt-procd/commits/wip</a></div><di=
v><br class=3D""></div><div>3. build with =
PKG_SOURCE_VERSION:=3Dff03f3ed9b6af8b209dae63f24790664c94bd916, test<br =
class=3D""><div><br class=3D""></div><div>the commit hash does not match =
any version in&nbsp;<a =
href=3D"https://gitlab.com/ynezz/openwrt-procd/commits/wip" =
class=3D"">https://gitlab.com/ynezz/openwrt-procd/commits/wip</a></div><di=
v><br class=3D""></div><div><br class=3D""></div><div>and =
then:</div><div><br =
class=3D""></div><div>5c6df2def2a1d26313b45cb40e2268a08c59f00 - =
FAILS</div><div><br =
class=3D""></div><div>465676c8b12618ec99122d0cc1217994de884284 - =
WORKS</div><div><br =
class=3D""></div><div>5bd12760e8fce026fd2a82d56f7b3c8dff27e096 - <font =
color=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" =
class=3D"">WORKS</span></font></div><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></div><div class=3D""><font color=3D"#000000" =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" =
class=3D"">8e195b325a86b4dc99ee5a9ee0b637cf266f9a0a - =
WORKS</span></font></div><div class=3D""><font color=3D"#000000" =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></font></div><div class=3D""><font color=3D"#000000" =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D"">I did =
get confused, as when it reports no error but the image is the same as =
the previous one, it does just reboot but does not flash anything. but =
when using a different image it did actually flash it as =
expected.</span></font></div><div class=3D""><font color=3D"#000000" =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></font></div><div class=3D""><br class=3D""></div><div =
class=3D""><font color=3D"#000000" class=3D""><span style=3D"caret-color: =
rgb(0, 0, 0);" class=3D"">The procd after forking the =
validate_firmware_image process does this in the parent (1) process =
(using strace):</span></font></div><div class=3D""><font color=3D"#000000"=
 class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></font></div><div class=3D""><font color=3D"#000000" =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D""><div =
class=3D"">clone(child_stack=3DNULL, flags=3DSIGCHLD) &nbsp;=3D =
1303</div><div class=3D"">rt_sigprocmask(SIG_SETMASK, [], NULL, 8) =3D =
0</div><div class=3D"">close(10) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D =
0</div><div class=3D"">read(9, 0x7fff5d1420, 64) &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; =3D ? ERESTARTSYS (To be restarted if =
SA_RESTART is set)</div><div class=3D"">--- SIGCHLD {si_signo=3DSIGCHLD, =
si_code=3DCLD_EXITED, si_pid=3D1372, si_uid=3D0, si_status=3D1, =
si_utime=3D1, si_stime=3D0} =E2=80=94</div><div class=3D""><div =
class=3D"">write(6, "w", 1) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D 1</div><div =
class=3D"">rt_sigreturn({mask=3D[]}) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; =3D -1 EINTR (Interrupted system call)</div><div =
class=3D"">close(9)</div></div><div class=3D""><br =
class=3D""></div></span></font></div><div class=3D""><font =
color=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" =
class=3D""><br class=3D""></span></font></div><div class=3D""><font =
color=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" =
class=3D""><br class=3D""></span></font></div><div><br =
class=3D""></div></div></body></html>=

--Apple-Mail=_DA364966-7FB4-471F-B137-79170928B6B3--


--===============0064836377139583645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0064836377139583645==--

