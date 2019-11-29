Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1565A10D916
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 18:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Mime-Version:Message-ID:To:From:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r1l9MNSuXYicJUMIo70793WFZsBtOKwZUbI+u+HH6Qs=; b=jxDxDmThAH125hdxsv40Oogfs6
	EIWTctOLQqyoNuE+5LblKJ/F4U1RncLZHKF412kFT2G8PNV+zQTSOKM35oY/AxXHrNFtK0OnV18xN
	blLSZNlzVvbmgI/NWG9khCU1SWG9hBqbZUXVW/OoqyNufD/n8UV20+QXFtc26Tu/R0mxEb+vcAOH8
	l3395zCzBZ2VxXtNR6NQNVMlI1WbG8esDgQgHzsUtWP6hQRzO/sZLWe0z0q71+8uIW7Y79P+MQyHo
	Oeq1xcuzVyqijBjtr/5NQs/OxPKCOz+adSKRDOA70XP3ZbS+HjAVK9Ia9QoycV4P29BWmsWGk1aTC
	GkxyfR0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iak3x-0006OW-7j; Fri, 29 Nov 2019 17:28:13 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iak2a-000599-MY
 for openwrt-devel@lists.openwrt.org; Fri, 29 Nov 2019 17:26:51 +0000
Received: from mx.receder.duckhood.monster ([165.22.51.193])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <deena_creamer@receder.duckhood.monster>)
 id 1iak2M-0006qu-Le
 for openwrt-devel@openwrt.org; Fri, 29 Nov 2019 12:26:35 -0500
Received: from mx.receder.duckhood.monster (mx.receder.duckhood.monster
 [127.0.0.1])
 by mx.receder.duckhood.monster (Postfix) with ESMTP id 47Pgv605yYz23tl
 for <openwrt-devel@openwrt.org>; Fri, 29 Nov 2019 17:08:17 +0000 (UTC)
Authentication-Results: mx.receder.duckhood.monster (amavisd-new);
 dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
 header.d=receder.duckhood.monster
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 receder.duckhood.monster; h=content-type:content-type
 :mime-version:message-id:x-mailer:user-agent:reply-to
 :list-unsubscribe:subject:subject:to:from:from:date:date; s=
 dkim; t=1575047297; x=1577639298; bh=TYsdgUi2CoHjMrzyyvfmb1nwCCd
 qCSpgdEZwqf5kYAw=; b=ouYFgqmYqCYkIxt9HvzuzzMjvE0QJGMOK9nb65JhNWd
 iqKV4K9DnBJe4wPx7Kumj6D84tQ0VVEt88jGJefRKb8TA6E6AjKlb8g7YkYSkkJF
 4qGNZgzscUW+KRZh8pXttkSbSDA3fCrMGaOHzO1NbdOJlK8+SQiEbUoSQajcB/pY
 =
X-Virus-Scanned: Debian amavisd-new at mx.receder.duckhood.monster
Received: from mx.receder.duckhood.monster ([127.0.0.1])
 by mx.receder.duckhood.monster (mx.receder.duckhood.monster [127.0.0.1])
 (amavisd-new, port 10024)
 with ESMTP id sp69ne77gAGv for <openwrt-devel@openwrt.org>;
 Fri, 29 Nov 2019 17:08:17 +0000 (UTC)
Received: from [127.0.0.1] (mx.receder.duckhood.monster [127.0.0.1])
 by mx.receder.duckhood.monster (Postfix) with ESMTP id 47Pgp353Zlz224w
 for <openwrt-devel@openwrt.org>; Fri, 29 Nov 2019 17:03:55 +0000 (UTC)
Date: Fri, 29 Nov 2019 17:03:55 +0000
From: "Anonymous Hacker" <deena_creamer@receder.duckhood.monster>
To: openwrt-devel@openwrt.org
User-Agent: CodeIgniter
X-Sender: deena_creamer@receder.duckhood.monster
X-Mailer: CodeIgniter
X-Priority: 3 (Normal)
Message-ID: <5de14f7b9178f@receder.duckhood.monster>
Mime-Version: 1.0
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-01.infra.openwrt.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 
 Content preview:  ATTENTION: openwrt-devel@openwrt.org The last time you visited
    a porn website with teenagers, you silently downloaded and installed the
   software I developed. My software has turned on your camera and recorded both
    your screen and an act of your mɑsturbation.. 
 
 Content analysis details:   (-2.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: openwrt.org]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [165.22.51.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0001]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_092649_146352_908605F1 
X-CRM114-Status: UNSURE (   0.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.6 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: duckhood.monster]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [165.22.51.193 listed in zen.spamhaus.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=deena_creamer%40receder.duckhood.monster; ip=46.101.232.90;
 r=bombadil.infradead.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] =?utf-8?q?IMPORTANT!_I_recorded_YOU_m=C9=91sturb?=
 =?utf-8?q?ating!_I_have_Openwrt_Devel=2Emp4_video_file!?=
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: deena_creamer@receder.duckhood.monster
Content-Type: multipart/mixed; boundary="===============3295455281942386502=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
Your email application may not support this format.

--===============3295455281942386502==
Content-Type: multipart/alternative; boundary="B_ALT_5de14f7b917a0"

This is a multi-part message in MIME format.
Your email application may not support this format.

--B_ALT_5de14f7b917a0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

ATTENTION: openwrt-devel@openwrt.org

The last time you visited a porn website with teenagers, you silently
downloaded and installed the software I developed.

My software has turned on your camera and recorded both your screen and an
act of your mɑsturbation..

My sneaky program also downloaded all your email contact lists and a list of
your friends from social networks.

I have the - Openwrt Devel.mp4 video file - with you jerking off to
teenagers, as well as a file with your relatives and associates email
addresses.

After downloading those files let me say one thing: your fantasies are far
beyond the normal!


If you want me to delete both files and keep your secret, you must send me
the Bitcoin payment.
Bitcoin is a secure cryptocurrency, very similar to BTC.
I give you 72 houɼs only to send the Bitcoin transfer.

If you don't know how to pay with Bitcoin, visit Google and search - how to
buy Bitcoin.
Visit one of the brokers (Coinbase, Bitstamp, anycoindirect), buy Bitcoin
and send it to my address.
Only then I will leɑve you ɑlone!

At anycoindirect you can pay instantly with SEPA, Giropay, EPS, Mybank,
Sofort, credit cards or Bancontract.

******************************************
Send 2,000 USD = 0.278430 BTC
to this Bitcoin address as soon as possible:

3FhV1wy8XFFUz9RFB
XqptPGoQi9NbLWFDm

(copy & paste - it's case sensitive - and combine both lines into one single
address)

1 BTC = 7,530 USD right now, so send exactly 0.278430 BTC to my Bitcoin
wallet.
******************************************

Do not try to cheat me!
As soon as you open this Email I will be notified you opened it.
I am monitoring all actions on your device..

This Bitcoin address is linked to you only, so I will know immediately when
you send the correct amount.
When you pay in full, I will remove both files (your mɑsturbation video and
your contact lists) and I will deactivate my sneaky program.
Changing your password will not help you, I will still have access to your
device remotely.

If you choose not to send me the Bitcoin transfer...
I will send your mɑsturbation video to all your friends and associates from
your contact lists that I downloaded from your device.
Your family members will receive it as well. You will regret it, trust me.

Here are the payment details again:

******************************************
Send 2,000 USD = 0.278430 BTC
to this Bitcoin address as soon as possible:

3FhV1wy8XFFUz9RFB
XqptPGoQi9NbLWFDm

(copy & paste - it's case sensitive - and combine both lines into one single
address)
******************************************



You can visit police but they will not help you with solving the problem.
My program will still be installed on your device and I still will own your
mɑsturbation videos.
Police will not catch me anyway. I know what I am doing.
I do not live in your country and I know how to stay anonymous.

Don't ever try to deceive me - I will know it. My program is recording all
the websites you visit and all your key presses.
If you try to trick me - I will send this ugly video to everyone you know,
including your family members.

Don't forget the potential shame - your life can be a disaster.

I am waiting for your Bitcoin payment.
You have 72 houɼs left.


Anonymous Hacker





--B_ALT_5de14f7b917a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=3C=21DOCTYPE HTML PUBLIC =22-//W3C//DTD XHTML 1.0 Transitional //EN=22 =22=
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd=22=3E
=3Chtml xmlns=3D=22http://www.w3.org/1999/xhtml=22 xmlns:v=3D=22urn:schemas=
-microsoft-com:vml=22 xmlns:o=3D=22urn:schemas-microsoft-com:office:office=
=22=3E
=3Chead=3E
=3Cmeta http-equiv=3D=22Content-Type=22 content=3D=22text/html=3B charset=
=3Dutf-8=22=3E
=3Cmeta name=3D=22viewport=22 content=3D=22width=3Ddevice-width=22=3E
=3C=21--=5Bif =21mso=5D=3E=3C=21--=3E=3Cmeta http-equiv=3D=22X-UA-Compatibl=
e=22 content=3D=22IE=3Dedge=22=3E=3C=21--=3C=21=5Bendif=5D--=3E
=3C=21--=5Bif =21mso=5D=3E=3C=21-- --=3E
=3Clink href=3D=22https://fonts.googleapis.com/css?family=3DBitter=22 rel=
=3D=22stylesheet=22 type=3D=22text/css=22=3E
=3Clink href=3D=22https://fonts.googleapis.com/css?family=3DOpen+Sans=22 re=
l=3D=22stylesheet=22 type=3D=22text/css=22=3E
=3C=21--=3C=21=5Bendif=5D--=3E
=3Cstyle type=3D=22text/css=22 id=3D=22media-query=22=3E
 body =7B
 margin: 0=3B
 padding: 0=3B =7D

table, tr, td =7B
 vertical-align: top=3B
 border-collapse: collapse=3B =7D

.a =7B
 max-width: 480px=3B
 margin: 10px 10px 10px 10px=3B
=20
=7D
.n =7B
 display:none=3B
=7D
.b =7B
 max-width: 480px=3B
 margin: 10px 10px 10px 10px=3B
 padding: 10px 20px 10px 20px=3B
 border: 1px solid black=3B
=20
=7D
=3C/style=3E
=3C/head=3E
=3Cbody style=3D=22margin: 0=3Bpadding: 0=3B-webkit-text-size-adjust: 100=
=25=3Bbackground-color: =23FFFFFF=22=3E
=20
=3Cdiv class=3D=22a=22=3E=3Cb=3EATTENTION: openwrt-devel=40openwrt.org=3C/b=
=3E=3C/div=3E
=3Cdiv class=3D=22a=22=3E
The last time you visited a porn website with teenagers, you silently downl=
oaded and installed the software I developed.
=3CBR=3E=3CBR=3E
My software has turned on your camera and =3Cb=3Erecorded both your screen =
and the act of your m=C9=91sturbation..=3C/b=3E
=3CBR=3E=3CBR=3E
My sneaky program also downloaded all your email contact lists and a list o=
f your friends from social networks.
=3CBR=3E=3CBR=3E
I have the - =3Cb=3EOpenwrt Devel.mp4 video file=3C/b=3E - with you jerking=
 off to teenagers, as well as a file with your relatives and associates ema=
il addresses.
=3CBR=3E=3CBR=3E
After downloading those files let me say one thing: your fantasies are far =
beyond the normal=21
=3C/div=3E=20

=3Cdiv class=3D=22a=22=3E
If you want me to delete both files and keep your secret, you must send me =
the Bitcoin (BTC) payment.=3CBR=3E
I give you 72 hou=C9=BCs only to send the Bitcoin transfer.
=3CBR=3E=3CBR=3E
If you don't know how to pay with Bitcoin, visit Google and search - how to=
 buy Bitcoin (BTC).=3CBR=3E
Visit one of the brokers (Coinbase, Bitstamp, anycoindirect), buy Bitcoin a=
nd send it to my address.=3CBR=3E
Only then I will le=C9=91ve you =C9=91lone=21
=3CBR=3E=3CBR=3E
At anycoindirect you can buy Bitcoin instantly with SEPA, Giropay, EPS, Myb=
ank, Sofort, credit cards or Bancontract.
=3CBR=3E=3CBR=3E
Here are the payment details:
=3C/div=3E

=3Cdiv class=3D=22b=22=3E
Send 2,000 USD =3D =3Cb=3E0.278430 BTC=3C/b=3E=3CBR=3E
to this Bitcoin address as soon as possible:
=3CBR=3E=3CBR=3E
=3Cb=3E3=3Cspan class=3D=22n=22=3EG2m0oTgOS53=3C/span=3E=3Cspan class=3D=22=
8KV15uqbsWwn=22=3EF=3C/span=3Eh=3Cspan id=3D=22RAjCl4cq=22=3EV=3C/span=3E1w=
=3Cspan class=3D=22n=22=3Er=3C/span=3Ey=3Cspan class=3D=22mhY3Z=22=3E8=3C/s=
pan=3EX=3Cspan class=3D=22n=22=3Eh7x42KRLNg=3C/span=3E=3Cspan class=3D=22ca=
6=22=3EF=3C/span=3E=3Cspan class=3D=22RdBn=22=3E=3C/span=3EF=3Cspan id=3D=
=22jNOBAYW=22=3EU=3C/span=3Ez=3Cspan class=3D=22wlIqU=22=3E9=3C/span=3ERF=
=3Cspan class=3D=22n=22=3EC6IoMT2g=3C/span=3EB=3Cspan id=3D=22IEHKixyjY9X=
=22=3EX=3C/span=3Eq=3Cspan class=3D=22n=22=3E9nq1x=3C/span=3Ep=3Cspan class=
=3D=22n=22=3E0Y1gvaMS8RBf=3C/span=3EtP=3Cspan id=3D=22Njge7=22=3EG=3C/span=
=3EoQ=3Cspan class=3D=22YecOorpJja=22=3E=3C/span=3Ei=3Cspan class=3D=22tEI7=
Gf=22=3E9=3C/span=3E=3Cspan class=3D=22T12WbvDgM8=22=3EN=3C/span=3E=3Cspan =
id=3D=22XgIua=22=3Eb=3C/span=3EL=3Cspan class=3D=22n=22=3EUOq930J=3C/span=
=3EW=3Cspan class=3D=22n=22=3EH=3C/span=3E=3Cspan class=3D=22f9BQJ7=22=3E=
=3C/span=3EF=3Cspan class=3D=22WbKaUEZQ49O6=22=3ED=3C/span=3Em=3Cspan class=
=3D=22n=22=3EdcFeN0r=3C/span=3E=3C/b=3E
=3CBR=3E=3CBR=3E
(copy =26 paste address - it's case sensitive)
=3C/div=3E

=3Cdiv class=3D=22a=22=3E
1 BTC =3D 7,530 USD right now, so send exactly 0.278430 BTC to my Bitcoin w=
allet.
=3CBR=3E=3CBR=3E=3CBR=3E
Do not try to cheat me=21=3CBR=3E
As soon as you open this Email I will be notified you opened it.=3CBR=3E
I am monitoring all actions on your device..
=3CBR=3E=3CBR=3E
This Bitcoin address is linked to you only, so I will know immediately when=
 you send the correct amount.=3CBR=3E
When you pay in full, I will remove both files (=3Cb=3Eyour m=C9=91sturbati=
on video and your contact lists=3C/b=3E) and I will deactivate my sneaky pr=
ogram.=3CBR=3E
Changing your password will not help you, I will still have access to your =
device remotely.
=3CBR=3E=3CBR=3E
If you choose not to send me the Bitcoin transfer...=3Cbr=3E
I will send your m=C9=91sturbation video to all your friends and associates=
 from your contact lists that I downloaded from your device.=3CBR=3E
Your family members will receive it as well. You will regret it, trust me.
=3CBR=3E=3CBR=3E
Here are the payment details again:
=3C/div=3E
=3Cdiv class=3D=22b=22=3E
Send 2,000 USD =3D =3Cb=3E0.278430 BTC=3C/b=3E=3CBR=3E
to this Bitcoin address as soon as possible:
=3CBR=3E=3CBR=3E
=3Cb=3E3=3Cspan class=3D=22n=22=3EG2m0oTgOS53=3C/span=3E=3Cspan class=3D=22=
8KV15uqbsWwn=22=3EF=3C/span=3Eh=3Cspan id=3D=22RAjCl4cq=22=3EV=3C/span=3E1w=
=3Cspan class=3D=22n=22=3Er=3C/span=3Ey=3Cspan class=3D=22mhY3Z=22=3E8=3C/s=
pan=3EX=3Cspan class=3D=22n=22=3Eh7x42KRLNg=3C/span=3E=3Cspan class=3D=22ca=
6=22=3EF=3C/span=3E=3Cspan class=3D=22RdBn=22=3E=3C/span=3EF=3Cspan id=3D=
=22jNOBAYW=22=3EU=3C/span=3Ez=3Cspan class=3D=22wlIqU=22=3E9=3C/span=3ERF=
=3Cspan class=3D=22n=22=3EC6IoMT2g=3C/span=3EB=3Cspan id=3D=22IEHKixyjY9X=
=22=3EX=3C/span=3Eq=3Cspan class=3D=22n=22=3E9nq1x=3C/span=3Ep=3Cspan class=
=3D=22n=22=3E0Y1gvaMS8RBf=3C/span=3EtP=3Cspan id=3D=22Njge7=22=3EG=3C/span=
=3EoQ=3Cspan class=3D=22YecOorpJja=22=3E=3C/span=3Ei=3Cspan class=3D=22tEI7=
Gf=22=3E9=3C/span=3E=3Cspan class=3D=22T12WbvDgM8=22=3EN=3C/span=3E=3Cspan =
id=3D=22XgIua=22=3Eb=3C/span=3EL=3Cspan class=3D=22n=22=3EUOq930J=3C/span=
=3EW=3Cspan class=3D=22n=22=3EH=3C/span=3E=3Cspan class=3D=22f9BQJ7=22=3E=
=3C/span=3EF=3Cspan class=3D=22WbKaUEZQ49O6=22=3ED=3C/span=3Em=3Cspan class=
=3D=22n=22=3EdcFeN0r=3C/span=3E=3C/b=3E
=3CBR=3E=3CBR=3E
(copy =26 paste address - it's case sensitive)
=3C/div=3E
=3Cdiv class=3D=22a=22=3E
=3CBR=3E
You can visit the police but they will not solve your real problem.=3CBR=3E
My program will still be installed on your device and I still will own your=
 m=C9=91sturbation videos.=3CBR=3E
Police will not catch me anyway. I know what I am doing.
I do not live in your country and I know how to stay anonymous.
=3CBR=3E=3CBR=3E
Don't ever try to deceive me - I will know it. My program is recording all =
the websites you visit and all your key presses.
If you try to trick me - I will send this ugly video to everyone you know, =
including your family members.
=3CBR=3E=3CBR=3E
Don't forget the potential shame - your life can be a disaster=21
=3CBR=3E=3CBR=3E
I am waiting for your Bitcoin payment.=3CBR=3E
You have 72 hou=C9=BCs left.
=3CBR=3E=3CBR=3E
Anonymous Hacker
=3CBR=3E=3CBR=3E=3CBR=3E
=20
P.S. If you need more time to p=C9=91y, open your notepad on your device an=
d write '48h more'. Only this way you can contact me. I will consider givin=
g you more time before I release the video, but only when I see that you ar=
e really struggling to buy btc. I know you can afford it - so do not try to=
 trick me=21

=3C/div=3E

=3C/body=3E
=3C/html=3E

--B_ALT_5de14f7b917a0--


--===============3295455281942386502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3295455281942386502==--

