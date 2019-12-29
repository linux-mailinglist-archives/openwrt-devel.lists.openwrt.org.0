Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED0812C23E
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 11:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lu6KAXRR1b4rBjKOuDLXrsXlKNlWUrowUS+SirWNDM4=; b=uTv
	1ubRSViotr2f8CYzhMLoNHliAIGmtTxs+bJkAy9fpXG32wVSsbA3dlwsaiboAHnoNHdOOorTzjs+U
	1KNkxF574QMhCsAIBF22RuRMLhwDpBmnUZPaC+1Hd6v7y3XPTNMGFOBiXuhsZBQdKswvoQaGBuGN/
	dTbwRakOrhCYe814jow8oWSVSyQCIupnsRrSl3qF55BQypADR6K4ihh6LUYoAmCR4ClsjN2Ms9rzt
	wW4DOB5kU0TjlBaogf0fvaikv9nWpsd7ygko8FpUkBXvXkO0K6gHt7GnBIUVnZaU+D1v0lbH/s5Qc
	MIfLX1PXXEs20ZzWyqEBWcBmFqYU3Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilW8r-0000f0-Mh; Sun, 29 Dec 2019 10:49:49 +0000
Date: Sun, 29 Dec 2019 11:49:36 +0100
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] Sysupgrade possibly broken in recent development
 snapshots: "message": "Firmware image couldn't be validated"
Content-Type: multipart/mixed; boundary="===============7598311246999679717=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7598311246999679717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7598311246999679717==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-zteg06011501.me.com ([17.58.23.182])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilW8l-0000ea-1r
	for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 10:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577616579; bh=N6ZT3gXBC1aJOJq7X+6F12AZGhcqgnu8nX6T5+59C0w=;
	h=From:Content-Type:Subject:Message-Id:Date:To;
	b=fP08auExZghypL6Ygplsg7jO2fndx+5zI4ddTT17JU4eXWQxwNAGMgLD4Y1XNZ5ZY
	 aV3hJVD0S9XcfKr7bmzajYSXrrky5io6B85zaPBqCeysfswo4nnMrTbFQzdWmWh6NZ
	 SCObdRI75u/i+fnBPV/mWuqL7WlWkvVCWagEOYuqO77gWBS2QdwiaPSid0lyusJwR7
	 jQgxGbtebyj2tOriJCWaH6+RtlOW7IJrZizG1O5/1pDmiPwHbJ/nIB7jWHNiXkGr4S
	 Me3Gf+WUXAMC29kvF46TOQmU1G2/hQWIhgk5r7uPPTi6URu4YQzFVW/ux6mq6Smf6Z
	 OzbO/Gt9Y26Eg==
Received: from [192.168.176.103] (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-zteg06011501.me.com (Postfix) with ESMTPSA id 3D7402A0BB9
	for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 10:49:39 +0000 (UTC)
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A36FCA27-0A9B-455F-8A29-00DC451D2488"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Sysupgrade possibly broken in recent development snapshots:
 "message": "Firmware image couldn't be validated" 
Message-Id: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
Date: Sun, 29 Dec 2019 11:49:36 +0100
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-29_02:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=812 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912290103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_024943_116353_BD299C6E 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.182 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain


--Apple-Mail=_A36FCA27-0A9B-455F-8A29-00DC451D2488
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I seem to be experiencing a problem in the recent development snapshots =
of OpenWRT (running on RPi4): the sysupgrade does fail to upgrade the =
image.

it looks like this:

# sysupgrade openwrt-brcm2708-bcm2711-rpi-4-squashfs-sysupgrade.img.gz=20=

Reading partition table from bootdisk...
Reading partition table from image...
Saving config files...
Commencing upgrade. Closing all shell sessions.
{
	"error": {
		"message": "Firmware image couldn't be validated"
	}
}
Command failed: Unknown error


The problem does not seem to be with the image - older builds upgrade to =
the same image just fine, but the recent ones seem to fail.

Example: taking the most recent rpi-4-squashfs-factory.img.gz from =
2019-12-28 and trying to upgrade to rpi-4-squashfs-sysupgrade.img.gz =
from the same date does fail as indicated above.

Thanks for any hint with a workaround or a fix.

Petr





--Apple-Mail=_A36FCA27-0A9B-455F-8A29-00DC451D2488
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
seem to be experiencing a problem in the recent development snapshots of =
OpenWRT (running on RPi4): the sysupgrade does fail to upgrade the =
image.<div class=3D""><br class=3D""></div><div class=3D"">it looks like =
this:</div><div class=3D""><br class=3D""></div><div class=3D""><div =
class=3D""><font face=3D"Courier New" class=3D""># sysupgrade =
openwrt-brcm2708-bcm2711-rpi-4-squashfs-sysupgrade.img.gz&nbsp;</font></di=
v><div class=3D""><font face=3D"Courier New" class=3D"">Reading =
partition table from bootdisk...</font></div><div class=3D""><font =
face=3D"Courier New" class=3D"">Reading partition table from =
image...</font></div><div class=3D""><font face=3D"Courier New" =
class=3D"">Saving config files...</font></div><div class=3D""><font =
face=3D"Courier New" class=3D"">Commencing upgrade. Closing all shell =
sessions.</font></div><div class=3D""><font face=3D"Courier New" =
class=3D"">{</font></div><div class=3D""><font face=3D"Courier New" =
class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>"error": {</font></div><div class=3D""><font face=3D"Courier New" =
class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>"message": "Firmware image couldn't be =
validated"</font></div><div class=3D""><font face=3D"Courier New" =
class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>}</font></div><div class=3D""><font face=3D"Courier New" =
class=3D"">}</font></div><div class=3D""><font face=3D"Courier New" =
class=3D"">Command failed: Unknown error</font></div></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">The problem does not seem to be with the image - older builds =
upgrade to the same image just fine, but the recent ones seem to =
fail.</div><div class=3D""><br class=3D""></div><div class=3D"">Example: =
taking the most recent&nbsp;rpi-4-squashfs-factory.img.gz from =
2019-12-28 and trying to upgrade =
to&nbsp;rpi-4-squashfs-sysupgrade.img.gz from the same date does fail as =
indicated above.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks for any hint with a workaround or a fix.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Petr</div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div></body></html>=

--Apple-Mail=_A36FCA27-0A9B-455F-8A29-00DC451D2488--


--===============7598311246999679717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7598311246999679717==--

