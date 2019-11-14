Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55241FBD85
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 02:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=LWlLQpxacy6Abpi9+C/HvvaU/jN8oDflZCtO3BItk9k=; b=Aya42UauIp5FO0
	5Ib/0yPZxCwQaoMyfdyq6KZarbNBrocbzkQ/U0FXWIuCZ5xwGsGWXIqC9AbAzbdHpzX7RnZwk3pVc
	qJ5Zab4EOyUKlKYPfldtMhw6udtsIwRN7PuNTIne9T3JesQwh6A937aTaXOUOvm5EGqWLxAh1DfEK
	9hH8b0l4UFbWlKr+TAAJByWdU6g5+E4qa5OHLi8tQVT3EiYC13Sho7yCkQeja8Xd8jS4aoxS3rVT2
	tif2THprEiJOJOZ3xYZAa4Mi03SKRa1TVyQ3HCsZw5/qLUWGAXp+NBHrjE2wOrggV0sW5c4hapw8Y
	8ehIsNqu+FIYfp5t9uXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV414-0005E5-CJ; Thu, 14 Nov 2019 01:33:46 +0000
Date: Wed, 13 Nov 2019 17:33:29 -0800
To: openwrt-devel@lists.openwrt.org
References: <D217DD8F-66DD-4A37-96A8-F0D05E990A8E.ref@aim.com>
MIME-Version: 1.0
Message-ID: <mailman.11171.1573695221.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: John Clark via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: John Clark <jeclark2006@aim.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] Build problems for kernel zImage and squashfs for
 the PowerPC P1020
Content-Type: multipart/mixed; boundary="===============3125976014826170182=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============3125976014826170182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3125976014826170182==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic310-22.consmr.mail.gq1.yahoo.com ([98.137.69.148])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV40x-0005Dn-8J
	for openwrt-devel@lists.openwrt.org; Thu, 14 Nov 2019 01:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aim.com; s=a2048; t=1573695214; bh=QD5snEO2oJnLieUBagX7tEMPUC2SNwNly+7H8gddBO8=; h=From:Subject:Date:To:References:From:Subject; b=TfvHh2XhfmFRBaIbmHj2aIq7V2afFjvfi899hwm6/XtqwugLCM1pwKJBZbO46oChAQ023IgcX9Di2UxYpB3EGquhiYT1JFDrunxhJXuHi9/ru2ytFG9LIF4bPc5HgewIvKwdDtx8QlS9U6LvR7hDPl/UIT9idBsJtFGQBhciE9/o6XPhvQYjlB3jIEFI0jsj/OIwF4foI0LUtQK0eIxxVeWc6hL7uL0LnfEZEnw4vszVrzW0GZh0R/Zw7pv7wzo04681wmBtSD8joatOwhcB1j+bKe9ECFxlFNW0fgPRN5PA/8w1wxkv/x6VhwymJYOvk5qnEpbdJG3V9z4mLJntcQ==
X-YMail-OSG: mMjs2JsVM1nQ0WCdC1TlwP3Wf4hNdj_ee67q_ntVfO5pCnXqRDCB.EKUUMlMAHw
 w9CYAKY9sUGULFLV1u0H4qQfv24JuMj4pF2740c5iwFcXIZNQgpDwILoKCgrDUybfNwLBt4sswOH
 DViuGB3lqmOPbDBec_umvXFtI4bTMo.WoY3FxmU1IGM72dMHfBa_2MYuRbAkxadZZiF9xuGMdF7i
 Mq1chI849feo.SXSdjFAheNuh.s3pOgQdHGVn_piHzaW_4UbqnmMMiPJ9Kl3Tt2JQSFxOrZR_bEh
 tF2XS0U7PYpupXzgD5Mp.a4zzZioODE17VTc30iy26UbGW0RLEwZlDxUO1SKqNcZyfhQfXc7b.93
 VzNbm7_jYC_QPqg8FCTtx73hP_ujvbmeAEeb3NIiIRffbD8LDDVtJdilF7dLjcmrVd9qx9b5s4oa
 T3UT9i8dW1_YIOPcUkTJwtQ3jUwarUm02ikXu2yK0w4WxdWQ7DZXd1qMAdKAejSZ9wG1TBi_UNeE
 GHIyo7bkN5lJlH9eiVT3jI0LoWi4Zk18v0lSmG_eP.GxYG9M6mjynDQQ30ywV0Uy2FeFWOe2FbRP
 iulha29OwopNeYHzHRQfgkXrgb41uzOHgXZ8S._TQPHIlh.mV_OoA9wrsMHbZDcsOXN21TrTX0IW
 6ecQoSE.Ion7V5gkuq8UGWFMHdikNMP7IGdwzDzu9DeCo_AFj6lfbn3SgtaIXj7nT4VYLNBuDeDk
 s0JJkrGe_djn0WauWsllFeclmg_s.inytWbvJqeSonOqRfPnI3RqBp18ZNE7EMaILLtsIHvbDG2L
 FQPsGdtr1MWaM3cxDNeevhzkjWfX4nJ0sH2wTpqZjtemKafYz7y2moX2TP1rfZCZcJHVvYECHfPe
 qQ0RL9vG9UGPGV.FEuPaBvVP9Y.K8nj1e46hOxVMDOyA5jXOwKcs.2E75NjA3SC0e6m0jMX8L9HX
 APJTclJDW4zh3h3MHUdBMK85dk_XEogKbOMdfbtAnJc9muWRK73Ck4pjf0ZdLxl0pFYwF8uxI50R
 xnD05ScbCKsiK23b_FuefpRJzm7gYQ8F_XOD5HnGZzWzQu1_zCvU76TmGFifCHvSy5Sfh69ZDDyE
 0nnOf9a2HM42HWAtH1Dq7DBch9RvP4NYa.Qso_YodRvGlRc2NP6TiSw34ySUOQ5QsOxXe_aoX2O4
 yNUdTVKeM2wA1rpuxoPzi_Pg.NMMhSXZ4teiyuTApXdlQzXTR39D5UaWYvykZrnRIgiq2gFKjHNJ
 35SvG03E4nfPsFn.Bc7EGpc1GiIxVnfAMF2OzYwW7bP2ZkSaoIXzTyE6fjv6.pC6Uonoenq44fOT
 S.A.RaxfJASju3WZ766xygT4G59FgmuTCJNEd
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.gq1.yahoo.com with HTTP; Thu, 14 Nov 2019 01:33:34 +0000
Received: by smtp409.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 77f59c303d2cf113a8706d05a6be87da;
          Thu, 14 Nov 2019 01:33:31 +0000 (UTC)
From: John Clark <jeclark2006@aim.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1E8F1BA7-F568-42F7-A0DB-C492187B7942"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Build problems for kernel zImage and squashfs for the PowerPC P1020
Message-Id: <D217DD8F-66DD-4A37-96A8-F0D05E990A8E@aim.com>
Date: Wed, 13 Nov 2019 17:33:29 -0800
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3445.104.11)
References: <D217DD8F-66DD-4A37-96A8-F0D05E990A8E.ref@aim.com>
Content-Length: 2664
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_173339_331903_EC8D588D 
X-CRM114-Status: UNSURE (   4.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [98.137.69.148 listed in list.dnswl.org]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit (jeclark2006[at]aim.com)
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (jeclark2006[at]aim.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid


--Apple-Mail=_1E8F1BA7-F568-42F7-A0DB-C492187B7942
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I posted this to the forum, so I=E2=80=99ll post it to the mail list as =
well.

Some time ago, I don't know exactly when, the standard configuration for =
the MPC85XX OpenWRT seems to have deleted the building of the following =
files.

Currently it seems to build for some board named 'panda', or 'hive', =
which don't match my board that I've been building OpenWRT for, for the =
last 5 or so years.

There seems to be the option somewhere to build these files, but I can =
not figure out what options at the top level to just make it happen.

Has anyone else had this problem or does anyone use the PowerPC with =
OpenWRT since the grand amalgamation of LED and OpenWRT.

Help/explanation would be appreciated.

John C.



--Apple-Mail=_1E8F1BA7-F568-42F7-A0DB-C492187B7942
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D"">I posted this to the =
forum, so I=E2=80=99ll post it to the mail list as well.<div =
class=3D""><br class=3D""></div><div class=3D""><div class=3D"cooked"><p =
class=3D"">Some time ago, I don't know exactly when, the=20
standard configuration for the MPC85XX OpenWRT seems to have deleted the
 building of the following files.</p><p class=3D"">Currently it seems to =
build for some board named 'panda', or 'hive',=20
which don't match my board that I've been building OpenWRT for, for the=20=

last 5 or so years.</p><p class=3D"">There seems to be the option =
somewhere to build these files, but I=20
can not figure out what options at the top level to just make it =
happen.</p><p class=3D"">Has anyone else had this problem or does anyone =
use the PowerPC with OpenWRT since the grand amalgamation of LED and =
OpenWRT.</p><p class=3D"">Help/explanation would be appreciated.</p><p =
class=3D"">John C.</p><div class=3D""><br class=3D""></div></div><section =
class=3D"clearfix post-menu-area"><nav class=3D"post-controls clearfix =
expanded"><div class=3D"actions"><div =
class=3D"double-button"></div></div></nav></section><div =
class=3D"posts-wrapper"><div id=3D"ember251" class=3D"ember-view =
loading-container"> =20
</div>
          </div>
          <div id=3D"topic-bottom" class=3D""></div>

<div id=3D"ember252" class=3D"ember-view loading-container"> =20



              <div id=3D"ember253" class=3D"ember-view =
topic-status-info"></div></div></div></body></html>=

--Apple-Mail=_1E8F1BA7-F568-42F7-A0DB-C492187B7942--


--===============3125976014826170182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3125976014826170182==--

