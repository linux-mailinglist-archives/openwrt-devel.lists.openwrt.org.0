Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB5017100F
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 06:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IrwOHxv2x3jD13PtIMmIWUQRm+2TFn2S6SNwabcnNUY=; b=eCuTh2QJv6O29NUOISuMVwULv
	epFOloBmPzHqVTjCbcwWd1beb94cm2jNP1fCHcF7z9s42PVhWVuDdI7oGqxfXusOFLiIl6cHlhBCX
	qOh6vldDO/+VbLfLlXDL1m9F8FSGZMpLT1HjKkKkdeDefr9bMSz7tjpQ0MfpvMpuQXfbSQo4QX+Bg
	FjTcR0hYnr/12tIcJBFMufmRhiS0yaxT7Kdryc5oHHVkXiYZjabpQgoEzVIuWRbcC25l1KhDrX85N
	XeOvfrs7AbRmi58LNROjdjxTwoXXdvKbBaupaVRrpkyeD02waRfQ8jthVAnDA5cSWKQllb3qJX/D3
	8E9Kdhblg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7BXJ-0000N5-OG; Thu, 27 Feb 2020 05:16:37 +0000
In-Reply-To: <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
Date: Thu, 27 Feb 2020 00:16:25 -0500
References: <20200224120605.152672-1-mans0n@gorani.run>
 <020001d5eb15$97c9e810$c75db830$@adrianschmutzler.de>
 <BF9B5E3E-E8A4-4798-B85A-1078A871F6A2@me.com>
 <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.34108.1582780593.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Raylynn Knight via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Raylynn Knight <rayknight@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into
 plain DTS files
Content-Type: multipart/mixed; boundary="===============5791092815957988855=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5791092815957988855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5791092815957988855==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from st43p00im-ztfb10061701.me.com ([17.58.63.172])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7BXC-0000MI-UJ
	for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 05:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1582780586; bh=Ickw3XoxYvbzo7lVcvaIUvxw8zCyLyc6v3UfEpKXue8=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=Z4z+jbbSwk+v5SOmRJ4hUuomqwfT5GE4X4dlf9r1QQ/Yft1AQZDukIzRFjln94sgV
	 gKHAaZDIOglERqGkvC1gZywDM1tYbeSL7cU9WkqtT3tC2wsCLV6c/ahGOWaEb9rRVI
	 8C22QLpOGaqvQTooVT3mtsVoNq3pH6lEsPL7jcTmb+esGciQ9wIEQbj3E6A98TMDEI
	 TZgCGa5Xpu4tNr24GFvdNigTRS3GlD63Og4lTgNl4wIts6YR/hEZwC38kP325PCJN9
	 xRZe+zMrAfrL6r1QUHN1lDh6aAMsn7ZXIoI2OJpaB8yb50L0X1hDCh3MvhDubqWgir
	 l28bA/XWT/KpQ==
Received: from imac-27-2017.lan (c-71-204-6-23.hsd1.ga.comcast.net [71.204.6.23])
	by st43p00im-ztfb10061701.me.com (Postfix) with ESMTPSA id 7E65DAC0539;
	Thu, 27 Feb 2020 05:16:26 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into plain
 DTS files
From: Raylynn Knight <rayknight@me.com>
In-Reply-To: <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
Date: Thu, 27 Feb 2020 00:16:25 -0500
Cc: openWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <37009CB8-2488-459D-8EB3-B31281FD2AD8@me.com>
References: <20200224120605.152672-1-mans0n@gorani.run>
 <020001d5eb15$97c9e810$c75db830$@adrianschmutzler.de>
 <BF9B5E3E-E8A4-4798-B85A-1078A871F6A2@me.com>
 <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-02-26_09:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2002270039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_211631_055788_18695404 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rayknight[at]me.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.63.172 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Sorry, I did intend the email for the list.

I actually have an example of all of the devices affected by this patch =
except the nsa310b.  Would there be any issue with me trying to get the =
OpenWrt patches upstreamed?

Ray
=20

> On Feb 25, 2020, at 5:55 AM, Adrian Schmutzler =
<mail@adrianschmutzler.de> wrote:
>=20
> Hi Ray,
>=20
> was this a private message by intention?
>=20
> This patch only reorganizes the existing files in OpenWrt's kirkwood. =
While I've
> been involved in cleaning up the kirkwood target recently, this not =
even my
> patch.
>=20
> I personally don't think that upstreaming DTS files for devices I've =
never even
> touched is a good idea. For that, I think the best way would be to =
contact the
> original authors of device support or at least find somebody who =
really has the
> device.
>=20
> So, while I would welcome to upstream the code in general, I do not =
see that
> this would be Sungbo Eo's or my job right now.
>=20
> In contrast, it might be a good idea to mention this in the currently =
pending
> device support PRs for Kirkwood if you think it would be worth it.
>=20
> Best
>=20
> Adrian
>=20
>> -----Original Message-----
>> From: Raylynn Knight [mailto:rayknight@me.com]
>> Sent: Dienstag, 25. Februar 2020 04:39
>> To: Adrian Schmutzler <mail@adrianschmutzler.de>
>> Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches =
into plain
>> DTS files
>>=20
>> What is the reason that these DTS files are not submitted upstream to =
the
>> kernel?
>>=20
>> Ray
>>=20
>>=20
>>> On Feb 24, 2020, at 8:23 AM, Adrian Schmutzler =
<mail@adrianschmutzler.de>
>> wrote:
>>>=20
>>> Hi,
>>>=20
>>>> -----Original Message-----
>>>> From: openwrt-devel =
[mailto:openwrt-devel-bounces@lists.openwrt.org] On
>>>> Behalf Of Sungbo Eo
>>>> Sent: Montag, 24. Februar 2020 13:06
>>>> To: openwrt-devel@lists.openwrt.org
>>>> Cc: Sungbo Eo <mans0n@gorani.run>
>>>> Subject: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into =
plain
>> DTS
>>>> files
>>>>=20
>>>> Move DTS files newly created by patch files to files directory. =
This will
> make
>>>> these files much more maintainable.
>>>>=20
>>>> Patching the kernel Makefile is unnecessary, as the DTS files =
specified in
>>>> DEVICE_DTS will be compiled by OpenWrt buildroot anyway.
>>>=20
>>> I personally see it the same way, though I'm aware this in handled
> differently
>>> for different targets.
>>> This change will just remove one layer of complexity.
>>>=20
>>> Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>>>=20
>>> Best
>>>=20
>>> Adrian
>>>=20
>>>=20
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
>=20



--===============5791092815957988855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5791092815957988855==--
